// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/billpreview_cal_res.dart';
import 'package:p_o_s/domain/customers/customers_list.dart';
import 'package:p_o_s/domain/printing%20models/printing_models.dart';
import 'package:p_o_s/domain/stock/stock_model.dart';
import 'package:p_o_s/infrastructure/calculations/bill_preview_cal.dart';
import 'package:p_o_s/infrastructure/calculations/credit_outstanding.dart';
import 'package:p_o_s/infrastructure/calculations/invoice_no_next.dart';
import 'package:p_o_s/infrastructure/calculations/next_payid_add.dart';
import 'package:p_o_s/infrastructure/calculations/pay_id_next.dart';
import 'package:p_o_s/infrastructure/print_functions.dart';
import 'package:p_o_s/infrastructure/server.dart';
import 'package:p_o_s/presentaion/screen%20home/screen_home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';

import '../../../infrastructure/bluethooth_print_func.dart';

part 'submitbill_event.dart';
part 'submitbill_state.dart';
part 'submitbill_bloc.freezed.dart';

class SubmitbillBloc extends Bloc<SubmitbillEvent, SubmitbillState> {
  SubmitbillBloc() : super(SubmitbillState.initial()) {
    List<Stocklist> list = [];
    String invno = '';
    String retuninvNo = '';
    on<Listing>((event, emit) {
      list = event.list;

      final List<InvoiceData> relist =
          convertToInvoiceDataList(list, state.discountprsnd);

      double invoicetotal = 0.00;
      double subtotal = 0.00;
      double netamttotal = 0.00;
      double textotal = 0.00;
      double billDiscounttotal = 0.00;
      double totalcessamt = 0.00;
      double totalgstamt = 0.00;

      for (var item in relist) {
        invoicetotal = invoicetotal + item.totalAmount;

        netamttotal = netamttotal + item.netAmount;
        textotal = textotal + item.cessAmount + item.gstAmount;

        billDiscounttotal = billDiscounttotal + item.billDiscount;
        totalcessamt = totalcessamt + item.cessAmount;
        totalgstamt = totalgstamt + item.gstAmount;

        subtotal = subtotal + item.grossValue;
      }
      var grossTotal = 0.00;

      if (state.outstaingtype == 'credit') {
        grossTotal = state.outstandingCreditamt.abs() - invoicetotal;
      } else if (state.outstaingtype == 'debit') {
        grossTotal = invoicetotal + state.outstandingCreditamt.abs();
      } else if (state.outstaingtype == '') {
        grossTotal = invoicetotal;
      }

      emit(state.copyWith(
        billsubmission: false,
        printbill: false,
        saleretunbill: false,
        grossTotal: grossTotal,
        list: list,
        gstAmounttotal: totalgstamt,
        cessamt: totalcessamt,
        invoiceTotal: invoicetotal,
        netamount: netamttotal,
        previewlist: relist,
        subtotal: subtotal,
        totladiscamt: billDiscounttotal,
        taxinc: textotal,
      ));
    });
    on<RemoveItem>((event, emit) {
      List<Stocklist> newList = List.from(list);

      final List<InvoiceData> previewlist = List.from(event.invoicelist);

      newList.removeAt(event.itemIndex);
      previewlist.removeAt(event.itemIndex);

      list = newList;
      Fluttertoast.showToast(msg: 'Item removed.');
      BlocProvider.of<SubmitbillBloc>(event.context).add(Listing(list: list));
      emit(state.copyWith(list: list, previewlist: previewlist));

      BlocProvider.of<SubmitbillBloc>(event.context).add(
          AddDiscount(dicountamt: state.totladiscamt, selectedstocklist: list));
    });

    on<OutstandingCredit>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          printbill: false,
          billsubmission: false,
          saleretunbill: false));
      try {
        final bool isConnected = await databaseConn();

        if (isConnected) {
          log('connected');

          // Combined query for all necessary data
          String combinedQuery = '''
        SELECT 'InvoiceAccountDetail' AS TableName, cusid, TotalHavetoPayamount, NULL AS CrORDr, NULL AS Amount
        FROM dbo.InvoiceAccountDetail
        WHERE cusid = '${event.cusid}'
        UNION ALL
        SELECT 'PurchaseReturnAccounts', cusid, TotalHavetoPayamount, NULL, NULL
        FROM dbo.PurchaseReturnAccounts
        WHERE cusid = '${event.cusid}'
        UNION ALL
        SELECT 'PurchaseAccountDetail', cusid, TotalHavetoPayamount, NULL, NULL
        FROM dbo.PurchaseAccountDetail
        WHERE cusid = '${event.cusid}'
        UNION ALL
        SELECT 'SalesReturnAccounts', cusid, TotalHavetoPayamount, NULL, NULL
        FROM dbo.SalesReturnAccounts
        WHERE cusid = '${event.cusid}'
        UNION ALL
        SELECT 'PayorEXOpeningBalance', cusid, NULL, CrORDr, Amount
        FROM dbo.PayorEXOpeningBalance
        WHERE cusid = '${event.cusid}'
        UNION ALL
        SELECT 'PayorEX', VendIDOreCusID AS cusid, NULL, PayCrDr AS CrORDr, paidamount AS Amount
        FROM dbo.PayorEX
        WHERE VendIDOreCusID = '${event.cusid}'
      ''';

          var combinedResult = await mssqlConnection!.getData(combinedQuery);
          List<Map<String, dynamic>> responseData =
              (json.decode(combinedResult) as List)
                  .map((item) => item as Map<String, dynamic>)
                  .toList();
          log('combinedResult: $combinedResult');

          // Process data
          double invoiceAccountDetailamtsum = getTotalAmountForCustomerIdd(
              responseData
                  .where((item) => item['TableName'] == 'InvoiceAccountDetail')
                  .toList(),
              'TotalHavetoPayamount');

          double purchaseReturnAccountsum = getTotalAmountForCustomerIdd(
              responseData
                  .where(
                      (item) => item['TableName'] == 'PurchaseReturnAccounts')
                  .toList(),
              'TotalHavetoPayamount');

          double purchaseAccountDetailsum = getTotalAmountForCustomerIdd(
              responseData
                  .where((item) => item['TableName'] == 'PurchaseAccountDetail')
                  .toList(),
              'TotalHavetoPayamount');

          double salesReturnAccountsum = getTotalAmountForCustomerIdd(
              responseData
                  .where((item) => item['TableName'] == 'SalesReturnAccounts')
                  .toList(),
              'TotalHavetoPayamount');

          Map<String, double> payorEXOpening = calculateAmounts(
              responseData
                  .where((item) => item['TableName'] == 'PayorEXOpeningBalance')
                  .toList(),
              event.cusid,
              'cusid',
              'CrORDr',
              'Amount');

          Map<String, double> payorEX = calculateAmounts(
              responseData
                  .where((item) => item['TableName'] == 'PayorEX')
                  .toList(),
              event.cusid,
              'cusid',
              'CrORDr',
              'Amount');

          // Calculate DR and CR
          final dr = purchaseReturnAccountsum +
              invoiceAccountDetailamtsum +
              (payorEXOpening['debitAmount'] ?? 0.00) +
              (payorEX['debitAmount'] ?? 0.00);
          final cr = salesReturnAccountsum +
              purchaseAccountDetailsum +
              (payorEXOpening['creditAmount'] ?? 0.00) +
              (payorEX['creditAmount'] ?? 0.00);

          log("DR: $dr, CR: $cr");

          final outstandingCreditamt = cr - dr;
          var outstaingtype = '';
          if (outstandingCreditamt > 0) {
            outstaingtype = 'credit';
          } else if (outstandingCreditamt < 0) {
            outstaingtype = 'debit';
          } else {
            outstaingtype = '';
          }

          var grossTotal = state.invoiceTotal;
          if (outstaingtype == 'credit') {
            grossTotal -= outstandingCreditamt.abs();
          } else if (outstaingtype == 'debit') {
            grossTotal += outstandingCreditamt.abs();
          }

          emit(state.copyWith(
              isLoading: false,
              outstandingCreditamt: outstandingCreditamt,
              isError: false,
              outstaingtype: outstaingtype,
              grossTotal: grossTotal));
        } else {
          emit(state.copyWith(isLoading: false, isError: true));
          log('not connected');
        }
      } catch (e) {
        emit(state.copyWith(isLoading: false, isError: true));
        log('Error: $e');
      }
    });

//     on<OutstandingCredit>((event, emit) async {
//   emit(state.copyWith(
//       isLoading: true,
//       printbill: false,
//       billsubmission: false,
//       saleretunbill: false));
//   try {
//     final bool isConnected = await databaseConn();

//     if (isConnected == true) {
//       log('connected');

//       // Combined query for InvoiceAccountDetail and PurchaseReturnAccounts
//       String combinedDrQuery = '''
//         SELECT cusid,
//                SUM(CASE WHEN TableName = 'InvoiceAccountDetail' THEN TotalHavetoPayamount ELSE 0 END) AS InvoiceAmount,
//                SUM(CASE WHEN TableName = 'PurchaseReturnAccounts' THEN TotalHavetoPayamount ELSE 0 END) AS PurchaseReturnAmount
//         FROM (
//           SELECT 'InvoiceAccountDetail' AS TableName, cusid, TotalHavetoPayamount FROM dbo.InvoiceAccountDetail
//           UNION ALL
//           SELECT 'PurchaseReturnAccounts', cusid, TotalHavetoPayamount FROM dbo.PurchaseReturnAccounts
//         ) AS CombinedDr
//         WHERE cusid = '${event.cusid}'
//         GROUP BY cusid
//       ''';

//       var combinedDrResult = await mssqlConnection!.getData(combinedDrQuery);
//       log('combinedDrResult: $combinedDrResult');

//       double invoiceAccountDetailamtsum = getTotalAmountForCustomerId(combinedDrResult, 'InvoiceAmount');
//       double purchaseReturnAccountsum = getTotalAmountForCustomerId(combinedDrResult, 'PurchaseReturnAmount');

//       // Combined query for PurchaseAccountDetail and SalesReturnAccounts
//       String combinedCrQuery = '''
//         SELECT cusid,
//                SUM(CASE WHEN TableName = 'PurchaseAccountDetail' THEN TotalHavetoPayamount ELSE 0 END) AS PurchaseAmount,
//                SUM(CASE WHEN TableName = 'SalesReturnAccounts' THEN TotalHavetoPayamount ELSE 0 END) AS SalesReturnAmount
//         FROM (
//           SELECT 'PurchaseAccountDetail' AS TableName, cusid, TotalHavetoPayamount FROM dbo.PurchaseAccountDetail
//           UNION ALL
//           SELECT 'SalesReturnAccounts', cusid, TotalHavetoPayamount FROM dbo.SalesReturnAccounts
//         ) AS CombinedCr
//         WHERE cusid = '${event.cusid}'
//         GROUP BY cusid
//       ''';

//       var combinedCrResult = await mssqlConnection!.getData(combinedCrQuery);
//       log('combinedCrResult: $combinedCrResult');

//       double purchaseAccountDetailsum = getTotalAmountForCustomerId(combinedCrResult, 'PurchaseAmount');
//       double salesReturnAccountsum = getTotalAmountForCustomerId(combinedCrResult, 'SalesReturnAmount');

//       // Query for PayorEXOpeningBalance
//       String payorEXOpeningBalancequery = '''
//         SELECT cusid, CrORDr, Amount
//         FROM dbo.PayorEXOpeningBalance
//         WHERE cusid = '${event.cusid}'
//       ''';
//       var payorEXOpeningBalanceresult = await mssqlConnection!.getData(payorEXOpeningBalancequery);
//       log('payorEXOpeningBalanceresult: $payorEXOpeningBalanceresult');

//       Map<String, double> calculatePayorEXopeningresult = calculatePayorEXopening(payorEXOpeningBalanceresult, event.cusid);
//       final double cropening = calculatePayorEXopeningresult['creditAmount'] ?? 0.00;
//       final double dropening = calculatePayorEXopeningresult['debitAmount'] ?? 0.00;

//       // Query for PayorEX
//       String payorEXquery = '''
//         SELECT VendIDOreCusID, PayCrDr, paidamount
//         FROM dbo.PayorEX
//         WHERE VendIDOreCusID = '${event.cusid}'
//       ''';
//       var payorEXresult = await mssqlConnection!.getData(payorEXquery);
//       log('payorEXresult: $payorEXresult');

//       Map<String, double> calculatePayorEXresult = calculatePayorEX(payorEXresult, event.cusid);
//       final double crPayorEX = calculatePayorEXresult['creditAmount'] ?? 0.00;
//       final double drPayorEX = calculatePayorEXresult['debitAmount'] ?? 0.00;

//       // Calculate DR and CR
//       final dr = purchaseReturnAccountsum + invoiceAccountDetailamtsum + dropening + drPayorEX;
//       final cr = salesReturnAccountsum + purchaseAccountDetailsum + cropening + crPayorEX;

//       log("DR: $dr, CR: $cr");

//       final outstandingCreditamt = cr - dr;
//       var outstaingtype = '';
//       if (outstandingCreditamt > 0) {
//         outstaingtype = 'credit';
//       } else if (outstandingCreditamt < 0) {
//         outstaingtype = 'debit';
//       } else if (outstandingCreditamt == 0) {
//         outstaingtype = '';
//       }

//       var grossTotal = 0.00;
//       if (outstaingtype == 'credit') {
//         grossTotal = outstandingCreditamt.abs() - state.invoiceTotal;
//       } else if (outstaingtype == 'debit') {
//         grossTotal = state.invoiceTotal + outstandingCreditamt.abs();
//       } else if (outstaingtype == '') {
//         grossTotal = state.invoiceTotal;
//       }

//       emit(state.copyWith(
//           isLoading: false,
//           outstandingCreditamt: outstandingCreditamt,
//           isError: false,
//           outstaingtype: outstaingtype,
//           grossTotal: grossTotal));
//     } else {
//       emit(state.copyWith(isLoading: false, isError: true));
//       log('not connected');
//     }
//   } catch (e) {
//     emit(state.copyWith(isLoading: false, isError: true));
//     log('Error: $e');
//   }
// });
//     on<OutstandingCredit>((event, emit) async {
//       emit(state.copyWith(
//           isLoading: true,
//           printbill: false,
//           billsubmission: false,
//           saleretunbill: false));
//       try {
//         final bool isConnected = await databaseConn();

//         if (isConnected == true) {
//           log('connectedddd');

//           ///////////////////////////////////////////Dr
//           //dbo.InvoiceAccountDetail
//           // String invoiceAccountDetailquery =
//           //     'SELECT cusid,TotalHavetoPayamount  FROM dbo.InvoiceAccountDetail GO';
//           // String invoiceAccountDetailResult =
//           //     await mssqlConnection!.getData(invoiceAccountDetailquery);
//           // log('invoiceAccountDetailResult');
//           // log(invoiceAccountDetailResult);

//           // double invoiceAccountDetailamtsum = getTotalAmountForCustomerId(
//           //     invoiceAccountDetailResult, event.cusid);
//           // log("Total invoiceAccountDetailamtsum-------------- : $invoiceAccountDetailamtsum");

//           String invoiceAccountDetailquery = '''
//   SELECT SUM(TotalHavetoPayamount) as TotalAmount
//   FROM dbo.InvoiceAccountDetail
//   WHERE cusid = '${event.cusid}'

// ''';

// String invoiceAccountDetailResult = await mssqlConnection!.getData(invoiceAccountDetailquery);
// log('invoiceAccountDetailResult');
// log(invoiceAccountDetailResult);

// // Parse the result and get the total amount
// Map<String, dynamic> resultData = json.decode(invoiceAccountDetailResult)[0];
// double invoiceAccountDetailamtsum = resultData['TotalAmount'] ?? 0.0;
// log("Total invoiceAccountDetailamtsum-------------- : $invoiceAccountDetailamtsum");

//           //dbo.PurchaseReturnAccounts
//           String purchaseReturnAccountsquery =
//               'SELECT cusid,TotalHavetoPayamount  FROM dbo.PurchaseReturnAccounts GO';
//           String purchaseReturnAccountresult =
//               await mssqlConnection!.getData(purchaseReturnAccountsquery);
//           log('purchaseReturnAccountresult');

//           log(purchaseReturnAccountresult);
//           double purchaseReturnAccountsum = getTotalAmountForCustomerId(
//               purchaseReturnAccountresult, event.cusid);

//           log("Total purchaseReturnAccountsum---------- : $purchaseReturnAccountsum");

//           ///////////////////////////////////////////Cr
//           //dbo.PurchaseAccountDetail
//           String purchaseAccountDetailquery =
//               'SELECT cusid,TotalHavetoPayamount  FROM dbo.PurchaseAccountDetail GO';
//           String purchaseAccountDetailResult =
//               await mssqlConnection!.getData(purchaseAccountDetailquery);
//           log('purchaseAccountDetailResult');

//           log(purchaseAccountDetailResult);
//           double purchaseAccountDetailsum = getTotalAmountForCustomerId(
//               purchaseAccountDetailResult, event.cusid);

//           log("Total purchaseAccountDetailsum--------- : $purchaseAccountDetailsum");

//           //dbo.SalesReturnAccounts
//           String salesReturnAccountsquery =
//               'SELECT cusid,TotalHavetoPayamount  FROM dbo.SalesReturnAccounts GO';
//           String salesReturnAccountsresult =
//               await mssqlConnection!.getData(salesReturnAccountsquery);
//           log('salesReturnAccountsresult');

//           log(salesReturnAccountsresult);

//           double salesReturnAccountsum = getTotalAmountForCustomerId(
//               salesReturnAccountsresult, event.cusid);

//           log("Total salesReturnAccountssum-------- : $salesReturnAccountsum");

//           //dbo.PayorEXOpeningBalance
//           String payorEXOpeningBalancequery =
//               'SELECT cusid,CrORDr,Amount  FROM dbo.PayorEXOpeningBalance GO';
//           String payorEXOpeningBalanceresult =
//               await mssqlConnection!.getData(payorEXOpeningBalancequery);
//           log('payorEXOpeningBalanceresult');

//           log(payorEXOpeningBalanceresult);

//           Map<String, double> calculatePayorEXopeningresult =
//               calculatePayorEXopening(payorEXOpeningBalanceresult, event.cusid);
//           final double cropening =
//               calculatePayorEXopeningresult['creditAmount'] ?? 0.00;
//           final double dropening =
//               calculatePayorEXopeningresult['debitAmount'] ?? 0.00;

//           log('Total Credit Amount for opening $event.cusid: ${calculatePayorEXopeningresult['creditAmount']}');
//           log('Total Debit Amount for opening $event.cusid: ${calculatePayorEXopeningresult['debitAmount']}');

//           //dbo.PayorEX
//           String payorEXquery =
//               'SELECT VendIDOreCusID,PayCrDr,paidamount  FROM dbo.PayorEX GO';
//           String payorEXresult = await mssqlConnection!.getData(payorEXquery);
//           log('payorEXresult');

//           log(payorEXresult);

//           Map<String, double> calculatePayorEXresult =
//               calculatePayorEX(payorEXresult, event.cusid);

//           log('Total Credit Amount for $event.cusid: ${calculatePayorEXresult['creditAmount']}');
//           log('Total Debit Amount for $event.cusid: ${calculatePayorEXresult['debitAmount']}');

//           final double crPayorEX =
//               calculatePayorEXresult['creditAmount'] ?? 0.00;
//           final double drPayorEX =
//               calculatePayorEXresult['debitAmount'] ?? 0.00;

//           //dr
//           log("   final dr = $purchaseReturnAccountsum + $invoiceAccountDetailamtsum +$dropening +$drPayorEX");
//           final dr = purchaseReturnAccountsum +
//               invoiceAccountDetailamtsum +
//               dropening +
//               drPayorEX;

//           log(dr.toString());

//           //cr
//           log("   final cr = $salesReturnAccountsum + $purchaseAccountDetailsum + $cropening + $crPayorEX;");
//           final cr = salesReturnAccountsum +
//               purchaseAccountDetailsum +
//               cropening +
//               crPayorEX;
//           log(cr.toString());
//           // log("${dr - cr}");

//                     // +    cr   ivdeindd
//              // -    dr   ingooot tharan

//           final outstandingCreditamt = cr - dr;

//           var outstaingtype = '';

//           if (outstandingCreditamt > 0) {
//             outstaingtype = 'credit';
//           } else if (outstandingCreditamt < 0) {
//             outstaingtype = 'debit';
//           } else if (outstandingCreditamt == 0) {
//             outstaingtype = '';
//           }

//           var grossTotal = 0.00;

//           if (outstaingtype == 'credit') {
//             grossTotal = outstandingCreditamt.abs() - state.invoiceTotal;
//           } else if (outstaingtype == 'debit') {
//             grossTotal = state.invoiceTotal + outstandingCreditamt.abs();
//           } else if (outstaingtype == '') {
//             grossTotal = state.invoiceTotal;
//           }

//           emit(state.copyWith(
//               isLoading: false,
//               outstandingCreditamt: outstandingCreditamt,
//               isError: false,
//               outstaingtype: outstaingtype,
//               grossTotal: grossTotal));
//         } else {
//           emit(state.copyWith(isLoading: false, isError: true));

//           log('not connected');
//         }
//       } catch (e) {
//         emit(state.copyWith(isLoading: false, isError: true));

//         log('not connected');
//         log('Error: $e');
//       }
//     });

    on<AddDiscount>((event, emit) {
      log('AddDiscount event call');

      log(event.dicountamt.toString());

      final double dicountamt = event.dicountamt;
      final List<Stocklist> selclist = event.selectedstocklist;
      double calculateTotalsum = calculateTotal(selclist);
      log("calculateTotal--------------------${calculateTotalsum.toString()}");

      double dicprsnt = discountprsnt(
          discountAmount: dicountamt, totalAmount: calculateTotalsum);

      final List<InvoiceData> relist =
          convertToInvoiceDataList(selclist, dicprsnt);

      double invoicetotal = 0.00;
      double subtotal = 0.00;
      double netamttotal = 0.00;
      double textotal = 0.00;
      double billDiscounttotal = 0.00;
      double totalcessamt = 0.00;
      double totalgstamt = 0.00;

      for (var item in relist) {
        invoicetotal = invoicetotal + item.totalAmount;

        netamttotal = netamttotal + item.netAmount;
        textotal = textotal + item.cessAmount + item.gstAmount;

        billDiscounttotal = billDiscounttotal + item.billDiscount;

        subtotal = subtotal + item.grossValue;
        totalcessamt = totalcessamt + item.cessAmount;
        totalgstamt = totalgstamt + item.gstAmount;
      }

      var grossTotal = 0.00;
      log('messagejjjjjjjjjjjjjjjjjjj');
      log(state.outstaingtype);
      if (state.outstaingtype == 'credit') {
        grossTotal = state.outstandingCreditamt.abs() - invoicetotal;
      } else if (state.outstaingtype == 'debit') {
        grossTotal = invoicetotal + state.outstandingCreditamt.abs();
      } else if (state.outstaingtype == '') {
        grossTotal = invoicetotal;
      }

      emit(state.copyWith(
          grossTotal: grossTotal,
          list: list,
          cessamt: totalcessamt,
          invoiceTotal: invoicetotal,
          netamount: netamttotal,
          previewlist: relist,
          gstAmounttotal: totalgstamt,
          totladiscamt: billDiscounttotal,
          subtotal: subtotal,
          taxinc: textotal,
          discountprsnd: dicprsnt));
    });

    on<SubmitBill>((event, emit) async {
      log('SubmitBill --- ------------------');
      emit(state.copyWith(
        isLoading: true,
        billsubmission: false,trafic: false
      ));

      final paytype = event.paymentType;
      final datetime = DateTime.parse(
          '${DateTime.now().toString().substring(0, 10)} 00:00:00.000');

      var formattedDate = DateFormat('dd/MM/yyyy').format(datetime);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final logindata = prefs.getString('logindata');
      String? jsonString = prefs.getString('serverconn');
      String databaseName = jsonDecode(jsonString.toString())['databaseName'];
      Map<String, dynamic> jsonData = json.decode(logindata!);

      final id = jsonData['username'];

      try {
        final bool isConnected = await databaseConn();

        if (isConnected == true) {
          if (state.invoiceTotal > event.paymentamt) {
            var paidamount = 0.00;
            var balance = 0.00;
            var creditOrCleared = 'Credit';

            if (state.outstaingtype == 'credit' &&
                state.invoiceTotal < state.outstandingCreditamt.abs()) {
              paidamount = state.invoiceTotal;
              balance = 0.00;
              creditOrCleared = 'Cleared';
            } else {
              creditOrCleared = 'Credit';
              paidamount = 0.00;
              balance = state.invoiceTotal;
            }

            logWithTime("Starting database operation");

            // 1. Start logging for query1
            logWithTime("Executing query1 to get MAX custom invoice number...");

            String query1 =
                "SELECT MAX(CONVERT(INT, RIGHT(custominvno, LEN(custominvno)-3)))  FROM dbo.InvoiceAccountDetail WHERE CustomerTYPE='${event.customers.customerType}'";
            String? result1 = await mssqlConnection!.getData(query1);

            logWithTime("Received result from query1: $result1");

            // 2. Calculate next invoice number
            logWithTime("Calculating next invoice number...");

            String nextinvNo =
                nextinvoiceNo(result: result1, selectCustomer: event.customers);
            invno = nextinvNo;

            logWithTime("Next invoice number calculated: $nextinvNo");

            logWithTime("Preparing query2 for inserting invoice data...");

            String query2 = """
                    DECLARE @Inserted INT = 0;
                   IF NOT EXISTS (SELECT 1 FROM dbo.InvoiceAccountDetail WHERE custominvno = '$nextinvNo')
                     BEGIN
                  INSERT INTO dbo.InvoiceAccountDetail (cusid, cusname, cusnameAddress, custorcontact, cusnameGSTNumber, custominvno, Invoicedate, description, totalamount, totaltaxamount, Discountamount, extraamount, TotalHavetoPayamount, totalpaidamount, paidby, balance, status, DueDate, EmailOn, PrintedOn, SMSOn, INVorESTorORD, INVdiscPERCEN, CustomerTYPE, CreditOrCleared, INVtype, INVtypeState, ShipmenttoAddName, ShipmenttoAddress, cancelledorNOT, SalesManID, KOTNo, KOTNoCLorNOT, WaiterID, TableNumber, POSBILL, ItemDiscTotal, SubTotal, BillDiscPER, BillDiscTotal, INVnetAmount, INVtotalTAXAmnt, CustomerVehicleNum, TaxableValues, TotalCessAmount, BranchName, UserID) VALUES ('${event.customers.cusid}', '${event.customers.bussinessname}', '${event.customers.bussinessaddr}', '${event.customers.contactsmsno}', '${event.customers.gstno}', '$nextinvNo', Convert(datetime, '$formattedDate', 105), 'description', ${state.subtotal}, ${state.taxinc}, ${state.totladiscamt}, ${state.cessamt}, ${state.invoiceTotal}, $paidamount, '$paytype', $balance, 'Pending or close Demo', Convert(datetime, '$formattedDate', 105), Convert(datetime, '$formattedDate', 105), Convert(datetime, '$formattedDate', 105), Convert(datetime, '$formattedDate', 105), 'INV', '-', '${event.customers.customerType}', '$creditOrCleared', 'GST', '${event.customers.state}', '-', '-', '-', '-', '-', '-', '-', '-', '-', 0.00, ${state.subtotal}, ${state.discountprsnd}, ${state.totladiscamt}, ${state.netamount}, ${state.gstAmounttotal}, '-', 0.00, ${state.cessamt}, '$databaseName', '$id');

                  SET @Inserted = 1;
                  END
               SELECT @Inserted AS InsertedStatus;
                   """;

            logWithTime("Executing query2 to insert invoice data...");

            String result = await mssqlConnection!.getData(query2);

            log(result);

            if (result.isNotEmpty &&
                result.toString() == '[{"InsertedStatus":1}]') {
              logWithTime(
                  "Insertion successful for query2 --------------------");

              if (state.outstaingtype == 'credit' &&
                  state.invoiceTotal < state.outstandingCreditamt.abs()) {
                String queryb =
                    "SELECT MAX(CONVERT(INT, RIGHT(PayID, LEN(PayID)-3)))  FROM dbo.InvoicePaymentDetail  ";
                String resultb = await mssqlConnection!.getData(queryb);

                String paymentid = nextpaymentID(result: resultb);

                String queryc =
                    "INSERT INTO dbo.invoicePaymentdetail (PayID  ,cusid  ,cusname ,invno ,date ,status ,paidby ,description ,totalamount  ,totalpaidamount  ,balance ,totaltaxamount   ,usercontact ,paidamount ,INVorPUR,cancelledorNOT,UserID)  VALUES ( '$paymentid'  ,'${event.customers.cusid}'  ,'${event.customers.bussinessname}' ,'$nextinvNo' ,'${datetime}' ,'Data' ,'$paytype' ,'Paid' ,'0.00'  ,'0.00' ,'0.00' ,'0.00'  ,'0.00','${state.invoiceTotal}' ,'INV','Paid','$id')";
                await mssqlConnection!.writeData(queryc);
              }

              if (event.paymentamt > 0) {
                String query2 =
                    "SELECT MAX(CONVERT(INT, RIGHT(PayOrExpID, LEN(PayOrExpID)-3)))  FROM dbo.PayorEX  ";
                String? result2 = await mssqlConnection!.getData(query2);

                String payidno = nextpayNo(result: result2);

                log(' nottt 00000000');
                String query4 =
                    "INSERT INTO dbo.PayorEX (PayOrExpID,VendIDOreCusID,VendIDOreCusName,PayOrExpDate,CAT,Reff,paidby,description,totalamount,totalpaidamount,Amount,totaltaxamount,openingbalance,paidamount,PayCrDr,PayINVid,RootType,UserID)  VALUES ('$payidno', '${event.customers.cusid}' ,'${event.customers.bussinessname}'  ,'${datetime}'  ,'sale','reff'  ,'$paytype' ,'Paid','0.0','0.0','0.0','0.0','openingbalance' ,'${event.paymentamt}' ,'Cr' ,'${nextinvNo}' ,'Sale','$id')";
                log(query4);
                await mssqlConnection!.writeData(query4);
              } else {
                log(' 00000000');
              }

              for (var i = 0; i < state.previewlist.length; i++) {
                final venCGST = state.previewlist[i].gstPercent / 2;
                final venCGSTamt = state.previewlist[i].gstAmount / 2;
                final venSGST = state.previewlist[i].gstPercent / 2;
                final venSGSTamt = state.previewlist[i].gstAmount / 2;

                String query3 =
                    """INSERT INTO dbo.invoicedetail (invoiceno, invdate, duedate, terms, ordereference, cusid, invoiceto, invaddress, shipto, shipaddr, gstno, email, smsno, CustomerTYPE, pdtcode, pdtname, HSNCode, discp, pcs, qty, Freeqty, unitprice, itemMRP, Amount, ItemDiscPer, ItemDiscAmount, GrossValueAftrITMDisc, ItemBillDiscPER, ItemBillDiscAmount, ItemTotalNETAmount, gst, gstamount, Totalamount, venIGST, venIGSTamnt, venCGST, venCGSTamnt, venSGST, venSGSTamnt, ItemINVdiscTotal, ItemINVSubTotal, InvoiceDiscPer, InvoiceDiscAmount, InvoiceNETAmount, InvoiceTotalTAXAmount, extracost, Invoicetotal, totalpaid, balance, status, emailon, printon, smson, slno, INVorESTorORD, SerManDetails, CessPercentage, CessAmount, ItemUnitSaleRate,UserID) VALUES (
                    '$nextinvNo', '${datetime}', '${datetime}', '-', '-', '${event.customers.cusid}', '${event.customers.bussinessname}', '${event.customers.bussinessaddr}', '-', '${event.customers.bussinessaddr}', '${event.customers.gstno}', '${event.customers.email}', '${event.customers.contactsmsno}', '${event.customers.customerType}', '${state.list[i].codeorSku}', '${state.list[i].pdtname}', '${state.list[i].hsnCode}', '-', 1, ${state.list[i].count}, 0, ${state.previewlist[i].baseRate}, ${state.list[i].itemMrp}, ${state.previewlist[i].amount}, 0.00, 0.00, ${state.previewlist[i].grossValue}, ${state.discountprsnd}, ${state.previewlist[i].billDiscount}, ${state.previewlist[i].netAmount}, ${state.previewlist[i].gstPercent}, ${state.previewlist[i].gstAmount}, ${state.previewlist[i].totalAmount}, ${state.previewlist[i].gstPercent}, ${state.previewlist[i].gstAmount}, '$venCGST', '$venCGSTamt', '$venSGST', '$venSGSTamt', 0, ${state.subtotal}, ${state.discountprsnd}, ${state.totladiscamt}, ${state.netamount}, ${state.taxinc}, ${state.cessamt}, ${state.invoiceTotal}, $paidamount, $balance, '-', '-', '-', '${event.customers.contactsmsno}', '-', 'INV', '-', ${state.previewlist[i].cessPercent}, ${state.previewlist[i].cessAmount}, ${state.previewlist[i].saleRate},'$id');UPDATE MainStock SET totalstock = (
  SELECT OpeningStockValue = (
    (SELECT COALESCE(SUM(qty), 0) FROM Purchasedetail WHERE pdtcode = '${state.list[i].codeorSku}') +
    (SELECT COALESCE(SUM(qty), 0) FROM SalesReturnItems WHERE pdtcode = '${state.list[i].codeorSku}') +
    (SELECT COALESCE(SUM(qty), 0) FROM StockAdjustmentItems WHERE pdtcode = '${state.list[i].codeorSku}' AND StockInOrOut = 'In') +
    (SELECT COALESCE(SUM(StockQty), 0) FROM OpeningStock WHERE ItemCode = '${state.list[i].codeorSku}') -
    (SELECT COALESCE(SUM(qty), 0) FROM invoicedetail WHERE pdtcode = '${state.list[i].codeorSku}') -
    (SELECT COALESCE(SUM(qty), 0) FROM PurchaseReturnItems WHERE pdtcode = '${state.list[i].codeorSku}') -
    (SELECT COALESCE(SUM(qty), 0) FROM StockAdjustmentItems WHERE pdtcode = '${state.list[i].codeorSku}' AND StockInOrOut = 'Out')
  )
) WHERE codeorSKU = '${state.list[i].codeorSku}';
""";

                await mssqlConnection!.writeData(query3);

              }
                                        emit(state.copyWith(isLoading: false, billsubmission: true));

            } else {
                        emit(state.copyWith(isLoading: false,trafic :true));

              // BlocProvider.of<SubmitbillBloc>(event.ctx).add(
              //     SubmitbillEvent.submitBill(
              //         ctx: event.ctx,
              //         paymentType: event.paymentType,
              //         paymentamt: event.paymentamt,
              //         customers: event.customers));
              logWithTime(
                  "Insertion was not executed, record with nextinvNo already exists. ----------------------------------------------");
            }
          } else {
            logWithTime("Starting database operation");

            // 1. Start logging for query1
            logWithTime("Executing query1 to get MAX custom invoice number...");

            String query1 =
                "SELECT MAX(CONVERT(INT, RIGHT(custominvno, LEN(custominvno)-3)))  FROM dbo.InvoiceAccountDetail where CustomerTYPE='${event.customers.customerType}' ";
            String? result1 = await mssqlConnection!.getData(query1);
            log(result1.toString());

            logWithTime("Received result from query1: $result1");

            // 2. Calculate next invoice number
            logWithTime("Calculating next invoice number...");

            String nextinvNo =
                nextinvoiceNo(result: result1, selectCustomer: event.customers);
            invno = nextinvNo;
            logWithTime("Next invoice number calculated: $nextinvNo");

            // 3. Start logging for query2
            logWithTime("Preparing query2 for inserting invoice data...");

            String query2 = """
    DECLARE @Inserted INT = 0;
    IF NOT EXISTS (SELECT 1 FROM dbo.InvoiceAccountDetail WHERE custominvno = '$nextinvNo')
    BEGIN
        INSERT INTO dbo.InvoiceAccountDetail (cusid,cusname,cusnameAddress,custorcontact,cusnameGSTNumber,custominvno,Invoicedate,description,totalamount,totaltaxamount,Discountamount ,extraamount,TotalHavetoPayamount,totalpaidamount ,paidby ,balance,status ,DueDate,EmailOn ,PrintedOn,SMSOn,INVorESTorORD,INVdiscPERCEN ,CustomerTYPE ,CreditOrCleared  ,INVtype ,INVtypeState ,ShipmenttoAddName,ShipmenttoAddress  ,cancelledorNOT ,SalesManID,KOTNo,KOTNoCLorNOT,WaiterID,TableNumber ,POSBILL ,ItemDiscTotal ,SubTotal ,BillDiscPER ,BillDiscTotal ,INVnetAmount ,INVtotalTAXAmnt,CustomerVehicleNum ,TaxableValues,TotalCessAmount ,BranchName ,UserID)  VALUES (      '${event.customers.cusid}','${event.customers.bussinessname}','${event.customers.bussinessaddr}','${event.customers.contactsmsno}','${event.customers.gstno}','$nextinvNo',Convert(datetime, '$formattedDate', 105),'description',${state.subtotal},${state.taxinc},${state.totladiscamt} ,${state.cessamt},${state.invoiceTotal},${state.invoiceTotal} ,'$paytype' ,0.00,'Pending or close Demo' ,Convert(datetime, '$formattedDate', 105),Convert(datetime, '$formattedDate', 105),Convert(datetime, '$formattedDate', 105),Convert(datetime, '$formattedDate', 105),'INV','-' ,'${event.customers.customerType}' ,'Cleared'  ,'GST' ,'${event.customers.state}','-','-' ,'-' ,'-','-','-','-','-' ,'-' ,0.00 ,${state.subtotal} ,${state.discountprsnd} ,${state.totladiscamt} ,${state.netamount} ,${state.gstAmounttotal},'-' ,0.00,${state.cessamt} ,'$databaseName' ,'$id');

        SET @Inserted = 1;
    END
    SELECT @Inserted AS InsertedStatus;
""";

            logWithTime("Executing query2 to insert invoice data...");

            var result = await mssqlConnection!.getData(query2);
            log(result);
            if (result.isNotEmpty &&
                result.toString() == '[{"InsertedStatus":1}]') {
              logWithTime(
                  "Insertion successful for query2 --------------------");

              String queryPayorEX =
                  "SELECT MAX(CONVERT(INT, RIGHT(PayOrExpID, LEN(PayOrExpID)-3)))  FROM dbo.PayorEX  ";
              String? result2 = await mssqlConnection!.getData(queryPayorEX);

              String payidno = nextpayNo(result: result2);

              String query4 =
                  "INSERT INTO dbo.PayorEX (PayOrExpID ,VendIDOreCusID  ,VendIDOreCusName ,PayOrExpDate  ,CAT,Reff  ,paidby ,description,totalamount  ,totalpaidamount,Amount,totaltaxamount ,openingbalance  ,paidamount ,PayCrDr ,PayINVid ,RootType,UserID)  VALUES ('$payidno' , '${event.customers.cusid}' ,'${event.customers.bussinessname}'  ,'${datetime}' ,'sale','reff'  ,'$paytype' ,'Paid','0.0','0.0','0.0','0.0','-'   ,${event.paymentamt} ,'Cr' ,'${nextinvNo}','Sale','$id')";

              await mssqlConnection!.writeData(query4);

              for (var i = 0; i < state.previewlist.length; i++) {
                final venCGST = state.previewlist[i].gstPercent / 2;
                final venCGSTamt = state.previewlist[i].gstAmount / 2;
                final venSGST = state.previewlist[i].gstPercent / 2;
                final venSGSTamt = state.previewlist[i].gstAmount / 2;

                String query3 =
                    """INSERT INTO dbo.invoicedetail (invoiceno ,invdate, duedate,terms,ordereference ,cusid,invoiceto ,invaddress , shipto,shipaddr ,gstno   ,email  ,smsno,  CustomerTYPE ,pdtcode,  pdtname  ,HSNCode  , discp   ,pcs  ,    qty ,  Freeqty   ,unitprice  ,itemMRP,  Amount, ItemDiscPer ,ItemDiscAmount,GrossValueAftrITMDisc ,ItemBillDiscPER ,ItemBillDiscAmount  ,ItemTotalNETAmount   ,gst  ,gstamount    ,Totalamount  ,venIGST   ,venIGSTamnt,  venCGST ,venCGSTamnt,venSGST ,venSGSTamnt, ItemINVdiscTotal ,ItemINVSubTotal ,InvoiceDiscPer,InvoiceDiscAmount ,InvoiceNETAmount, InvoiceTotalTAXAmount,extracost,Invoicetotal, totalpaid,balance ,status ,emailon,printon,smson   ,slno,INVorESTorORD,SerManDetails , CessPercentage ,  CessAmount,ItemUnitSaleRate,UserID)  VALUES ('$nextinvNo','${datetime}','${datetime}','-','-', '${event.customers.cusid}','${event.customers.bussinessname}','${event.customers.bussinessaddr}','-','${event.customers.bussinessaddr}', '${event.customers.gstno}','${event.customers.email}','${event.customers.contactsmsno}','${event.customers.customerType}','${state.list[i].codeorSku}',            '${state.list[i].pdtname}','${state.list[i].hsnCode}','-', 1,  ${state.list[i].count},  0, ${state.previewlist[i].baseRate},${state.list[i].itemMrp},${state.previewlist[i].amount},0.00,          0.00,         ${state.previewlist[i].grossValue},${state.discountprsnd}, ${state.previewlist[i].billDiscount},${state.previewlist[i].netAmount},${state.previewlist[i].gstPercent},${state.previewlist[i].gstAmount},${state.previewlist[i].totalAmount},${state.previewlist[i].gstPercent},${state.previewlist[i].gstAmount},$venCGST,$venCGSTamt,$venSGST    ,$venSGSTamt,             0, ${state.subtotal},  ${state.discountprsnd},   ${state.totladiscamt},     ${state.netamount} ,  ${state.taxinc},    ${state.cessamt},      ${state.invoiceTotal},   ${state.invoiceTotal},   0.00,   '-',   '-',     '-',  '${event.customers.contactsmsno} ' ,'-','INV',         '-',               ${state.previewlist[i].cessPercent}  ,${state.previewlist[i].cessAmount},${state.previewlist[i].saleRate},'$id' )
                  ;
                  
                  
                 UPDATE MainStock SET totalstock = (
  SELECT OpeningStockValue = (
    (SELECT COALESCE(SUM(qty), 0) FROM Purchasedetail WHERE pdtcode = '${state.list[i].codeorSku}') +
    (SELECT COALESCE(SUM(qty), 0) FROM SalesReturnItems WHERE pdtcode = '${state.list[i].codeorSku}') +
    (SELECT COALESCE(SUM(qty), 0) FROM StockAdjustmentItems WHERE pdtcode = '${state.list[i].codeorSku}' AND StockInOrOut = 'In') +
    (SELECT COALESCE(SUM(StockQty), 0) FROM OpeningStock WHERE ItemCode = '${state.list[i].codeorSku}') -
    (SELECT COALESCE(SUM(qty), 0) FROM invoicedetail WHERE pdtcode = '${state.list[i].codeorSku}') -
    (SELECT COALESCE(SUM(qty), 0) FROM PurchaseReturnItems WHERE pdtcode = '${state.list[i].codeorSku}') -
    (SELECT COALESCE(SUM(qty), 0) FROM StockAdjustmentItems WHERE pdtcode = '${state.list[i].codeorSku}' AND StockInOrOut = 'Out')
  )
) WHERE codeorSKU = '${state.list[i].codeorSku}';
""";

                log('-----------------------------${query3.toString()}');
                await mssqlConnection!.writeData(query3);
              }
              String queryInvoicePaymentDetail =
                  "SELECT MAX(CONVERT(INT, RIGHT(PayID, LEN(PayID)-3)))  FROM dbo.InvoicePaymentDetail  ";
              String resultInvoicePaymentDetail =
                  await mssqlConnection!.getData(queryInvoicePaymentDetail);

              String paymentid =
                  nextpaymentID(result: resultInvoicePaymentDetail);

              String queryc =
                  "INSERT INTO dbo.invoicePaymentdetail (PayID  ,cusid  ,cusname ,invno ,date ,status ,paidby ,description ,totalamount  ,totalpaidamount  ,balance ,totaltaxamount   ,usercontact ,paidamount ,INVorPUR,cancelledorNOT,UserID)  VALUES ( '$paymentid'  ,'${event.customers.cusid}'  ,'${event.customers.bussinessname}' ,'$nextinvNo' ,'${datetime}' ,'Data' ,'$paytype' ,'Paid' ,'0.00'  ,'0.00' ,'0.00' ,'0.00'  ,'0.00','${state.invoiceTotal}' ,'INV','Paid','$id')";
              await mssqlConnection!.writeData(queryc);
                        emit(state.copyWith(isLoading: false, billsubmission: true));

            } else {
              // BlocProvider.of<SubmitbillBloc>(event.ctx).add(
              //     SubmitbillEvent.submitBill(
              //         ctx: event.ctx,
              //         paymentType: event.paymentType,
              //         paymentamt: event.paymentamt,
              //         customers: event.customers));
          emit(state.copyWith(isLoading: false,trafic :true));

              logWithTime(
                  "Insertion was not executed, record with nextinvNo already exists-----------------------------------------------.");
            }
          }


          // Fluttertoast.showToast(
          //     msg: ' Bill Submission successfully completed ');
        } else {
          emit(state.copyWith(
            isLoading: false,
          ));
          Fluttertoast.showToast(msg: 'Please check the database connection');
        }
      } catch (e) {
        // Fluttertoast.showToast(msg: 'sorry Something went wrong');
        emit(state.copyWith(
          isLoading: false,
        ));

        log('Error: $e');
      }
    });

    on<SubmitretunBill>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        saleretunbill: false,
        printbill: false,
        billsubmission: false,trafic: false
      ));

      final datetime = DateTime.parse(
          '${DateTime.now().toString().substring(0, 10)} 00:00:00.000');

      var formattedDate = DateFormat('dd/MM/yyyy').format(datetime);
      log("formattedDate ---- ---- ---- $formattedDate");
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final logindata = prefs.getString('logindata');

      Map<String, dynamic> jsonData = json.decode(logindata!);

      final id = jsonData['username'];
      log('login idddd $id');
      try {
        final bool isConnected = await databaseConn();

        if (isConnected == true) {
        String query1 = """
    SELECT 
        MAX(
            CASE 
                WHEN LEN(custominvno) > 3 THEN CONVERT(INT, RIGHT(custominvno, LEN(custominvno) - 3)) 
                ELSE NULL 
            END
        ) 
    FROM dbo.SalesReturnAccounts 
    WHERE CustomerTYPE = '${event.customers.customerType}';
""";

String? result1 = await mssqlConnection!.getData(query1);
log(result1.toString());

          String nextretuninvNo =  nextretuninvoiceNo(
              result: result1, selectCustomer: event.customers);
          retuninvNo = nextretuninvNo;
          log(' 1st case ');
     
String query2 =
    """
    DECLARE @Inserted INT = 0;
    IF NOT EXISTS (SELECT 1 FROM dbo.SalesReturnAccounts WHERE custominvno = '$nextretuninvNo')
    BEGIN
        INSERT INTO dbo.SalesReturnAccounts 
        (cusid, cusname, cusnameAddress, custorcontact, cusnameGSTNumber, custominvno, Invoicedate, description, 
         totalamount, totaltaxamount, Discountamount, extraamount, TotalHavetoPayamount, totalpaidamount, 
         paidby, balance, status, DueDate, EmailOn, PrintedOn, SMSOn, INVorESTorORD, INVdiscPERCEN, 
         CustomerTYPE, CreditOrCleared, INVtype, INVtypeState, ShipmenttoAddName, ShipmenttoAddress, 
         cancelledorNOT, SalesManID, KOTNo, KOTNoCLorNOT, WaiterID, TableNumber, POSBILL, ItemDiscTotal, 
         SubTotal, BillDiscPER, BillDiscTotal, INVnetAmount, INVtotalTAXAmnt, CustomerVehicleNum, 
         TaxableValues, TotalCessAmount, SaleINVNo, UserID) 
        VALUES 
        ('${event.customers.cusid}', '${event.customers.bussinessname}', '${event.customers.bussinessaddr}', 
         '${event.customers.contactsmsno}', '${event.customers.gstno}', '$nextretuninvNo', 
         Convert(datetime, '$formattedDate', 105), 'description', ${state.subtotal}, ${state.taxinc}, 
         ${state.totladiscamt}, ${state.cessamt}, ${state.invoiceTotal}, 0.00, 'Cash Demo', 
         ${state.invoiceTotal}, 'Pending or close Demo', 
         Convert(datetime, '$formattedDate', 105), Convert(datetime, '$formattedDate', 105), 
         Convert(datetime, '$formattedDate', 105), Convert(datetime, '$formattedDate', 105), 
         'INV', '-', '${event.customers.customerType}', 'credit', 'GST', '${event.customers.state}', 
         '-', '-', '-', '-', '-', '-', '-', '-', '-', 0.00, ${state.subtotal}, ${state.discountprsnd}, 
         ${state.totladiscamt}, ${state.netamount}, ${state.gstAmounttotal}, '-', 0.00, ${state.cessamt}, 
         '-', '$id');

        SET @Inserted = 1;
    END
    SELECT @Inserted AS InsertedStatus;
    """;


      var result=    await mssqlConnection!.writeData(query2);



log(result);
if (result.isNotEmpty &&
                result.toString() == '{"affectedRows":1}') {
  
 for (var i = 0; i < state.previewlist.length; i++) {
            final venCGST = state.previewlist[i].gstPercent / 2;
            final venCGSTamt = state.previewlist[i].gstAmount / 2;
            final venSGST = state.previewlist[i].gstPercent / 2;
            final venSGSTamt = state.previewlist[i].gstAmount / 2;

            log('$i   ------------------------------------------------------');
            String query3 =
                """INSERT INTO dbo.SalesReturnItems (invoiceno, invdate, duedate, terms, ordereference, cusid, invoiceto, invaddress, shipto, shipaddr, gstno, email, smsno, CustomerTYPE, pdtcode, pdtname, HSNCode, discp, pcs, qty, Freeqty, unitprice, itemMRP, Amount, ItemDiscPer, ItemDiscAmount, GrossValueAftrITMDisc, ItemBillDiscPER, ItemBillDiscAmount, ItemTotalNETAmount, gst, gstamount, Totalamount, venIGST, venIGSTamnt, venCGST, venCGSTamnt, venSGST, venSGSTamnt, ItemINVdiscTotal, ItemINVSubTotal, InvoiceDiscPer, InvoiceDiscAmount, InvoiceNETAmount, InvoiceTotalTAXAmount, extracost, Invoicetotal, totalpaid, balance, status, emailon, printon, smson, slno, INVorESTorORD, SerManDetails, CessPercentage, CessAmount, ItemUnitSaleRate, UserID) 
                VALUES ('$nextretuninvNo', '${datetime}', '${datetime}', '${state.list[i].returneReasone ?? "--"}', '-', '${event.customers.cusid}', '${event.customers.bussinessname}', '${event.customers.bussinessaddr}', '-', '${event.customers.bussinessaddr}', '${event.customers.gstno}', '${event.customers.email}', '${event.customers.contactsmsno}', '${event.customers.customerType}', '${state.list[i].codeorSku}', '${state.list[i].pdtname}', '${state.list[i].hsnCode}', '-', 1, ${state.list[i].count}, 0, ${state.previewlist[i].baseRate}, ${state.list[i].itemMrp}, ${state.previewlist[i].amount}, 0.00, 0.00, ${state.previewlist[i].grossValue}, ${state.discountprsnd}, ${state.previewlist[i].billDiscount}, ${state.previewlist[i].netAmount}, ${state.previewlist[i].gstPercent}, ${state.previewlist[i].gstAmount}, ${state.previewlist[i].totalAmount}, ${state.previewlist[i].gstPercent}, ${state.previewlist[i].gstAmount}, '$venCGST', '$venCGSTamt', '$venSGST', '$venSGSTamt', 0, ${state.subtotal}, ${state.discountprsnd}, ${state.totladiscamt}, ${state.netamount}, ${state.taxinc}, ${state.cessamt}, ${state.invoiceTotal}, 0.00, ${state.invoiceTotal}, '-', '-', '-', '${event.customers.contactsmsno}', '-', 'INV', '-', ${state.previewlist[i].cessPercent}, ${state.previewlist[i].cessAmount}, ${state.previewlist[i].saleRate},'$id');UPDATE MainStock SET totalstock = (
  SELECT OpeningStockValue = (
    (SELECT COALESCE(SUM(qty), 0) FROM Purchasedetail WHERE pdtcode = '${state.list[i].codeorSku}') +
    (SELECT COALESCE(SUM(qty), 0) FROM SalesReturnItems WHERE pdtcode = '${state.list[i].codeorSku}') +
    (SELECT COALESCE(SUM(qty), 0) FROM StockAdjustmentItems WHERE pdtcode = '${state.list[i].codeorSku}' AND StockInOrOut = 'In') +
    (SELECT COALESCE(SUM(StockQty), 0) FROM OpeningStock WHERE ItemCode = '${state.list[i].codeorSku}') -
    (SELECT COALESCE(SUM(qty), 0) FROM invoicedetail WHERE pdtcode = '${state.list[i].codeorSku}') -
    (SELECT COALESCE(SUM(qty), 0) FROM PurchaseReturnItems WHERE pdtcode = '${state.list[i].codeorSku}') -
    (SELECT COALESCE(SUM(qty), 0) FROM StockAdjustmentItems WHERE pdtcode = '${state.list[i].codeorSku}' AND StockInOrOut = 'Out')
  )
) WHERE codeorSKU = '${state.list[i].codeorSku}';
""";
            log('error');
            await mssqlConnection!.writeData(query3);
          }

          emit(state.copyWith(isLoading: false, saleretunbill: true));


}else{

          emit(state.copyWith(isLoading: false, trafic: true));






}













         

          // Fluttertoast.showToast(msg: 'Bill Submission successfully completed');
        } else {
          emit(state.copyWith(
            isLoading: false,
          ));
          Fluttertoast.showToast(msg: 'Please check the database connection');
        }
      } catch (e) {
        // Fluttertoast.showToast(msg: 'sorry Something went wrong');
        emit(state.copyWith(
          isLoading: false,
        ));

        log('Error: $e');
      }
    });
    on<Estimatesubmite>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        saleretunbill: false,
        printbill: false,trafic: true,
        billsubmission: false,
      ));

      final datetime = DateTime.parse(
          '${DateTime.now().toString().substring(0, 10)} 00:00:00.000');

      var formattedDate = DateFormat('dd/MM/yyyy').format(datetime);
      log("formattedDate ---- ---- ---- $formattedDate");
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final logindata = prefs.getString('logindata');

      Map<String, dynamic> jsonData = json.decode(logindata!);

      final id = jsonData['username'];
      log('login idddd $id');
      try {
        final bool isConnected = await databaseConn();

        if (isConnected == true) {
          String query1 =
              "SELECT MAX(CONVERT(INT, RIGHT(custominvno, LEN(custominvno)-3)))  FROM dbo.EstimateINVAccounts where CustomerTYPE='${event.customers.customerType}' ";
          String? result1 = await mssqlConnection!.getData(query1);
          log(result1.toString());

          String nextretuninvNo =
              await nextESTNo(result: result1, selectCustomer: event.customers);
          retuninvNo = nextretuninvNo;

          log(' 1st case ');
          String query2 =
              "INSERT INTO dbo.EstimateINVAccounts (cusid,cusname,cusnameAddress,custorcontact,cusnameGSTNumber,custominvno,Invoicedate,description,totalamount,totaltaxamount,Discountamount,extraamount,TotalHavetoPayamount,totalpaidamount,paidby,balance,status,DueDate,EmailOn,PrintedOn,SMSOn,INVorESTorORD,INVdiscPERCEN,CustomerTYPE,CreditOrCleared,INVtype,INVtypeState,ShipmenttoAddName,ShipmenttoAddress,cancelledorNOT,SalesManID,KOTNo,KOTNoCLorNOT,WaiterID,TableNumber,POSBILL,ItemDiscTotal,SubTotal,BillDiscPER,BillDiscTotal,INVnetAmount,INVtotalTAXAmnt,CustomerVehicleNum,TaxableValues,TotalCessAmount,ConvertedOrNot,ConvertedNarration,UserID) VALUES ('${event.customers.cusid}','${event.customers.bussinessname}','${event.customers.bussinessaddr}','${event.customers.contactsmsno}','${event.customers.gstno}','$nextretuninvNo',Convert(datetime, '$formattedDate', 105),'description',${state.subtotal},${state.taxinc},${state.totladiscamt},${state.cessamt},${state.invoiceTotal},0.00,'Cash Demo',${state.invoiceTotal},'Pending or close Demo',Convert(datetime, '$formattedDate', 105),Convert(datetime, '$formattedDate', 105),Convert(datetime, '$formattedDate', 105),Convert(datetime, '$formattedDate', 105),'INV',           '-','${event.customers.customerType}','credit','GST','${event.customers.state}',                                                                   '-',    '-','-','-','-','-','-','-','-',0.00,${state.subtotal},${state.discountprsnd},${state.totladiscamt},${state.netamount},${state.gstAmounttotal},'-',0.00,${state.cessamt},'','','$id');";

          log(query2);

          await mssqlConnection!.writeData(query2);

          for (var i = 0; i < state.previewlist.length; i++) {
            final venCGST = state.previewlist[i].gstPercent / 2;
            final venCGSTamt = state.previewlist[i].gstAmount / 2;
            final venSGST = state.previewlist[i].gstPercent / 2;
            final venSGSTamt = state.previewlist[i].gstAmount / 2;

            String query3 =
                "INSERT INTO dbo.EstimateItemsDetais (invoiceno, invdate, duedate, terms, ordereference, cusid, invoiceto, invaddress, shipto, shipaddr, gstno, email, smsno, CustomerTYPE, pdtcode, pdtname, HSNCode, discp, pcs, qty, Freeqty, unitprice, itemMRP, Amount, ItemDiscPer, ItemDiscAmount, GrossValueAftrITMDisc, ItemBillDiscPER, ItemBillDiscAmount, ItemTotalNETAmount, gst, gstamount, Totalamount, venIGST, venIGSTamnt, venCGST, venCGSTamnt, venSGST, venSGSTamnt, ItemINVdiscTotal, ItemINVSubTotal, InvoiceDiscPer, InvoiceDiscAmount, InvoiceNETAmount, InvoiceTotalTAXAmount, extracost, Invoicetotal, totalpaid, balance, status, emailon, printon, smson, slno, INVorESTorORD, SerManDetails, CessPercentage, CessAmount, ItemUnitSaleRate) VALUES ('$nextretuninvNo', '${datetime}', '${datetime}', '-', '-', '${event.customers.cusid}', '${event.customers.bussinessname}', '${event.customers.bussinessaddr}', '-', '${event.customers.bussinessaddr}', '${event.customers.gstno}', '${event.customers.email}', '${event.customers.contactsmsno}', '${event.customers.customerType}', '${state.list[i].codeorSku}', '${state.list[i].pdtname}', '${state.list[i].hsnCode}', '-', 1, ${state.list[i].count}, 0, ${state.previewlist[i].baseRate}, ${state.list[i].itemMrp}, ${state.previewlist[i].amount}, 0.00, 0.00, ${state.previewlist[i].grossValue}, ${state.discountprsnd}, ${state.previewlist[i].billDiscount}, ${state.previewlist[i].netAmount}, ${state.previewlist[i].gstPercent}, ${state.previewlist[i].gstAmount}, ${state.previewlist[i].totalAmount}, ${state.previewlist[i].gstPercent}, ${state.previewlist[i].gstAmount}, '$venCGST', '$venCGSTamt', '$venSGST', '$venSGSTamt', 0, ${state.subtotal}, ${state.discountprsnd}, ${state.totladiscamt}, ${state.netamount}, ${state.taxinc}, ${state.cessamt}, ${state.invoiceTotal}, 0.00, ${state.invoiceTotal}, '-', '-', '-', '${event.customers.contactsmsno}', '-', 'INV', '-', ${state.previewlist[i].cessPercent}, ${state.previewlist[i].cessAmount}, ${state.previewlist[i].saleRate})";

            await mssqlConnection!.writeData(query3);
          }

          emit(state.copyWith(isLoading: false, printbill: true));
          // Fluttertoast.showToast(msg: 'Bill Submission successfully completed');
        } else {
          emit(state.copyWith(
            isLoading: false,
          ));
          Fluttertoast.showToast(msg: 'Please check the database connection');
        }
      } catch (e) {
        // Fluttertoast.showToast(msg: 'sorry Something went wrong');
        emit(state.copyWith(
          isLoading: false,
        ));

        log('Error: $e');
      }
    });

    on<Printbill>((event, emit) async {
      log('from-------------------------------------- ' +
          event.from.toString());
      try {
        log('print bill bloc hit------------------');
        List<BillItems> billItems = [];
        int totalQty = 0;
        for (var stock in state.previewlist) {
          totalQty = totalQty + int.parse(stock.qty.round().toString());
          final BillItems bill = BillItems(
              qty: stock.qty.round().toString(),
              mrp: double.parse(stock.mrp.toStringAsFixed(2)),
              cessPercentage: state.cessprs.toString(),
              salerate: double.parse(stock.saleRate.toStringAsFixed(2)),
              hsnCode: stock.hsncode,
              itemName: stock.itemName,
              gstPercentage: stock.gstPercent.toString(),
              gstCessAmt: double.parse(
                  (stock.gstAmount + stock.cessAmount).toStringAsFixed(2)),
              itemTotal: double.parse(
                  (stock.saleRate * stock.qty).toStringAsFixed(2)));

          billItems.add(bill);
          // log(billItems.toString());
        }
        log('totalQty >>>>>>>>>' + totalQty.toString());
        if (event.isSunmi) {
          log(' sunmi -------------------------------------------------------');

          final List<int> escPos = await customEscPos(PrintBill(
              from: event.from,
              isFromBillView: false,
              status: '',
              totalQty: totalQty.toString(),
              billItems: billItems,
              invNo: event.from == 0 ? invno : retuninvNo,
              allItemTotal: state.subtotal.toStringAsFixed(1),
              cusOutstanding: state.outstandingCreditamt.toStringAsFixed(1),
              isOutstandingDebit: state.outstaingtype == 'debit' ? true : false,
              customer: Customerslist(
                  cusid: '${event.customers.cusid}',
                  bussinessname: event.customers.bussinessname,
                  state: event.customers.state ?? '',
                  email: event.customers.email ?? '',
                  district: event.customers.district ?? '',
                  bussinessaddr: event.customers.bussinessaddr,
                  contactsmsno: event.customers.contactsmsno ?? '',
                  gstno: event.customers.gstno ?? '',
                  customerType: event.customers.customerType ?? ''),
              discount: state.totladiscamt.toStringAsFixed(1),
              billTotal: state.invoiceTotal.toStringAsFixed(1),
              gstCesstotal: state.taxinc.toStringAsFixed(1),
              paidAmt: event.paidAmt.toString().isEmpty
                  ? '0.0'
                  : event.paidAmt.toString()));

          log(billItems.toList().toString());

          await SunmiPrinter.initPrinter();
          await SunmiPrinter.startTransactionPrint(true);
          await SunmiPrinter.printRawData(Uint8List.fromList(escPos));
          await SunmiPrinter.exitTransactionPrint(true);
        } else {
          log('not sunmi -------------------------------------------');
          printBill(PrintBill(
              from: event.from,
              isFromBillView: false,
              status: '',
              totalQty: totalQty.toString(),
              billItems: billItems,
              invNo: event.from == 0 ? invno : retuninvNo,
              allItemTotal: state.subtotal.toStringAsFixed(1),
              cusOutstanding: state.outstandingCreditamt.toStringAsFixed(1),
              isOutstandingDebit: state.outstaingtype == 'debit' ? true : false,
              customer: Customerslist(
                  cusid: '${event.customers.cusid}',
                  bussinessname: event.customers.bussinessname,
                  state: event.customers.state ?? '',
                  email: event.customers.email ?? '',
                  district: event.customers.district ?? '',
                  bussinessaddr: event.customers.bussinessaddr,
                  contactsmsno: event.customers.contactsmsno ?? '',
                  gstno: event.customers.gstno ?? '',
                  customerType: event.customers.customerType ?? ''),
              discount: state.totladiscamt.toStringAsFixed(1),
              billTotal: state.invoiceTotal.toStringAsFixed(1),
              gstCesstotal: state.taxinc.toStringAsFixed(1),
              paidAmt: event.paidAmt.toString().isEmpty
                  ? '0.0'
                  : event.paidAmt.toString()));
        }
      } catch (e) {
        log('Error (printing) :$e');
      }
    });
  }
}

void logWithTime(String message) {
  final String formattedTime =
      DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(DateTime.now());
  log("[$formattedTime] $message");
}
