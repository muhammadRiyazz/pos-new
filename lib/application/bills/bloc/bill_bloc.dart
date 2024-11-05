import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/customers/customers_list.dart';
import 'package:p_o_s/domain/invoiceDetail/invoicedetail.dart';
import 'package:p_o_s/domain/printing%20models/printing_models.dart';
import 'package:p_o_s/domain/viewbill%20model/view_bill_model.dart';
import 'package:p_o_s/infrastructure/bluethooth_print_func.dart';
import 'package:p_o_s/infrastructure/print_functions.dart';
import 'package:p_o_s/infrastructure/server.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';

part 'bill_event.dart';
part 'bill_state.dart';
part 'bill_bloc.freezed.dart';

class BillBloc extends Bloc<BillEvent, BillState> {
  BillBloc() : super(BillState.initial()) {
    List<ViewBillModel> billList = [];
    List<ViewBillModel> sortedlist = [];
    List<InvoiceDetail> productList = [];

    String id = '';
    on<FetchBill>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final logindata = prefs.getString('logindata');
      String? jsonString = prefs.getString('serverconn');
      log(jsonString.toString());
      Map<String, dynamic> jsonData = json.decode(logindata!);

      id = jsonData['username'];
      log('login idddd $id');
      try {
        final bool isConnected = await databaseConn();

        // log('connected done');
        if (isConnected) {
          String query =
              "SELECT TOP 100 * FROM dbo.InvoiceAccountDetail WHERE UserID ='$id' ORDER BY Invoicedate DESC";

          String result = await mssqlConnection!.getData(query);
          // log(viewBillModelToJson(result));

          billList = viewBillModelFromJson(result);

          double totalSale = 0;

          // DateTime currentDate = DateTime.now();
          // for (ViewBillModel item in billList) {

          //   if (item.dueDate!.substring(1, 4) ==
          //           currentDate.toString().substring(1, 4) &&
          //       item.dueDate!.substring(6, 7) ==
          //           currentDate.toString().substring(6, 7) &&
          //       item.dueDate!.substring(9, 10) ==
          //           currentDate.toString().substring(9, 10)) {

          //     totalSale += item.totalHavetoPayamount!;
          //   }
          // }
          log('>>  totalSale  >>> $totalSale');
          emit(state.copyWith(
            isLoading: false,
            isError: false,
            bills: billList,
            // totalSale: totalSale
          ));
        } else {
          emit(state.copyWith(
            isLoading: false,
            isError: true,
          ));
          // Fluttertoast.showToast(msg: 'Database disconnected');
          // Fluttertoast.showToast(msg: 'bill bloc 1');

          log('not connected');
        }
      } catch (e) {
        log("Error from bill bloc (Fetching) : $e");
      }
    });
    on<FetchReturnBill>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final logindata = prefs.getString('logindata');
      String? jsonString = prefs.getString('serverconn');
      log(jsonString.toString());
      // String databaseName = jsonDecode(jsonString.toString())['databaseName'];
      Map<String, dynamic> jsonData = json.decode(logindata!);

      final id = jsonData['username'];
      log('login idddd $id');
      try {
        final bool isConnected = await databaseConn();

        // log('connected done');
        if (isConnected) {
          String query =
              "SELECT *  FROM dbo.SalesReturnAccounts GO WHERE UserID ='$id'";

          String result = await mssqlConnection!.getData(query);
          // log(viewBillModelToJson(result));

          List<ViewBillModel> billsReturnList = viewBillModelFromJson(result);

          double totalSalesReturn = 0.0;

          log('>>> totalSalesReturn >>>  $totalSalesReturn');
          emit(state.copyWith(
            isLoading: false,
            isError: false,
            billsReturn: billsReturnList,
            // totalSaleReturn: totalSalesReturn
          ));
        } else {
          emit(state.copyWith(
            isLoading: false,
            isError: true,
          ));
          // Fluttertoast.showToast(msg: 'Database disconnected');
          // Fluttertoast.showToast(msg: 'bill bloc 2');

          log('not connected');
        }
      } catch (e) {
        log("Error from bill bloc (Fetching) : $e");
      }
    });
    on<FetchBillProducts>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        final bool isConnected = await databaseConn();

        if (isConnected) {
          String query =
              "SELECT  Id,invoiceno,CessAmount,CessPercentage,itemMRP,HSNCode,gst, pdtname, qty, unitprice,pdtcode,ItemUnitSaleRate,gstamount FROM dbo.invoicedetail GO WHERE invoiceno = '${event.invoiceNo.toString()}'";
          String payorExquery =
              "SELECT  paidamount FROM dbo.PayorEX GO WHERE PayINVid = '${event.invoiceNo.toString()}' AND RootType = 'Sale' ";
          String result = await mssqlConnection!.getData(query);
          String payorExresult = await mssqlConnection!.getData(payorExquery);
          log('payorExresult-----------------------------' + payorExresult);

          double paidAmount = 0.00;

          if (payorExresult == '[]') {
            paidAmount = 0.00;
          } else {
            List<Map<String, dynamic>> payorExresultList =
                (jsonDecode(payorExresult) as List<dynamic>)
                    .cast<Map<String, dynamic>>();

            paidAmount = payorExresultList[0]['paidamount'];
          }

          log('result--- $result');

          // log('>>>>>>   ' + invoiceDetailFromJson(result).toString());
          productList = invoiceDetailFromJson(result);

          emit(state.copyWith(
              paidamount: paidAmount,
              billItems: productList,
              isLoading: false,
              isError: false));
        } else {
          emit(state.copyWith(
            isLoading: false,
            isError: true,
          ));
          // Fluttertoast.showToast(msg: 'Database disconnected');
          // Fluttertoast.showToast(msg: 'bill bloc 3');

          log('not connected');
        }
      } catch (e) {
        log("Error from bill bloc (FetchBillProducts) : $e");
      }
    });
    on<SortBills>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      var sdate = DateFormat('dd/MM/yyyy').format(event.sDate!);
      var edate = DateFormat('dd/MM/yyyy').format(event.eDate!);

      try {
        final bool isConnected = await databaseConn();

        // log('connected done');
        if (isConnected) {
          String queryWithDate =
              "SELECT * FROM dbo.InvoiceAccountDetail GO WHERE Invoicedate BETWEEN Convert(datetime, '$sdate', 105) AND Convert(datetime, '$edate', 105)";
          String result = await mssqlConnection!.getData(queryWithDate);
          log(result);
          sortedlist = viewBillModelFromJson(result);

          emit(state.copyWith(
              selectedSdate: event.sDate,
              selectedEdate: event.eDate,
              bills: sortedlist,
              isLoading: false,
              isError: false));
        } else {
          emit(state.copyWith(
            isLoading: false,
            isError: true,
          ));
          // Fluttertoast.showToast(msg: 'Database disconnected');
          // Fluttertoast.showToast(msg: 'bill bloc 4');

          log('not connected');
        }
      } catch (e) {
        log("Error from bill bloc (FetchBillProducts) : $e");
      }
    });
    on<SearchBill>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      log('query-------------------------------------${event.query}');
      log('search event');
      List<ViewBillModel> searchresult = [];

      if (event.query.isEmpty) {
        log('event.query.isEmpty-------');

        if (state.selectedSdate != null || state.selectedEdate != null) {
          searchresult = sortedlist;
          log('   date not nulll');
        } else {
          log('   date  nulll');

          searchresult = billList;
        }
      } else {
        if (state.selectedSdate != null || state.selectedEdate != null) {
          log('date not nul ======');

          var sdate = DateFormat('dd/MM/yyyy').format(state.selectedSdate!);
          var edate = DateFormat('dd/MM/yyyy').format(state.selectedEdate!);

          final sql =
              "SELECT * FROM dbo.InvoiceAccountDetail WHERE  (cusname LIKE '%${event.query}%' OR custorcontact LIKE '%${event.query}%' OR custominvno LIKE '%${event.query}%') AND InvoiceDate BETWEEN Convert(datetime, '$sdate', 105) AND Convert(datetime, '$edate', 105)";
          String result = await mssqlConnection!.getData(sql);
          log(result);
          searchresult = viewBillModelFromJson(result);
        } else {
          log('date nul ======');

          final sql =
              "SELECT * FROM dbo.InvoiceAccountDetail WHERE  (cusname LIKE '%${event.query}%' OR custorcontact LIKE '%${event.query}%' OR custominvno LIKE '%${event.query}%')";
          String result = await mssqlConnection!.getData(sql);
          log(result);
          searchresult = viewBillModelFromJson(result);
        }

        log('searchresult.length------------------------------------${searchresult.length.toString()}');
      }
      emit(state.copyWith(bills: searchresult, isLoading: false));
    });
    on<ClearingSort>((event, emit) {
      emit(state.copyWith(
          bills: billList,
          selectedCus: null,
          selectedCusId: null,
          selectedEdate: null,
          selectedSdate: null));
    });
    on<RemoveCus>((event, emit) {
      log('bloc hit');

      emit(state.copyWith(
        selectedCus: null,
        selectedCusId: null,
      ));
    });

    on<BillPrintt>((event, emit) async {
      try {
        log('print bill bloc hit');
        List<BillItems> billItems = [];
        int totalQty = 0;
        for (var stock in productList) {
          totalQty = totalQty + int.parse(stock.qty!.round().toString());
          final BillItems bill = BillItems(
              qty: stock.qty!.round().toString(),
              mrp:  double.parse(stock.itemMRP!.toStringAsFixed(2)) ,
              cessPercentage: stock.CessPercentage!.toString(),
              salerate:double.parse(stock.ItemUnitSaleRate!.toStringAsFixed(2)) ,
              hsnCode: stock.hsncode,
              itemName: stock.pdtname!,
              gstPercentage: stock.gst.toString(),
              gstCessAmt:double.parse((stock.gstamount! + stock.CessAmount!).toStringAsFixed(2)) ,
              itemTotal:double.parse((stock.ItemUnitSaleRate! * stock.qty!).toStringAsFixed(2)) );

          billItems.add(bill);
          // log(billItems.toString());
        }
        log('totalQty >>>>>>>>>' + totalQty.toString());
   if (event.isSunmi) {
    log(' sunmi -------------------------------------------------------');

    // Log values
    log('Credit or Cleared Status: ${event.data.creditOrCleared}');
    log('Total Quantity: $totalQty');
    log('Invoice Number: ${event.data.custominvno}');
    log('Sub Total: ${event.data.subTotal}');
    log('Customer ID: ${event.data.cusid}');
    log('Customer Name: ${event.data.cusname}');
    log('Customer Address: ${event.data.cusnameAddress}');
    log('Contact: ${event.data.custorcontact}');
    log('GST Number: ${event.data.cusnameGstNumber}');
    log('Customer Type: ${event.data.customerType}');

    // Validate and log amounts
    final discount = event.data.discountamount != null ? event.data.discountamount!.toStringAsFixed(1) : '0.0';
    final totalToPay = event.data.totalHavetoPayamount != null ? event.data.totalHavetoPayamount!.toStringAsFixed(1) : '0.0';
    final gstTotal = event.data.totaltaxamount != null ? event.data.totaltaxamount!.toStringAsFixed(1) : '0.0';
    final paidAmount = state.paidamount != null ? state.paidamount.toStringAsFixed(1) : '0.0';

    log('Discount Amount: $discount');
    log('Total Amount to Pay: $totalToPay');
    log('Total GST Amount: $gstTotal');
    log('Paid Amount: $paidAmount');

    // Use tryParse to ensure valid doubles
    double? parsedDiscount = double.tryParse(discount);
    double? parsedTotalToPay = double.tryParse(totalToPay);
    double? parsedGstTotal = double.tryParse(gstTotal);
    double? parsedPaidAmount = double.tryParse(paidAmount);

    if (parsedDiscount == null || parsedTotalToPay == null || parsedGstTotal == null || parsedPaidAmount == null) {
        log('Error: One or more amounts are not valid doubles.');
        return; // or handle the error accordingly
    }

    try {
        final List<int> escPos = await customEscPos(PrintBill(
            from: 4,
            isFromBillView: true,
            status: event.data.creditOrCleared ?? '',
            totalQty: totalQty.toString(),
            billItems: billItems,
            invNo: event.data.custominvno!,
            allItemTotal: event.data.subTotal!.toStringAsFixed(1),
            cusOutstanding: '',
            isOutstandingDebit: true,
            customer: Customerslist(
                cusid: '${event.data.cusid!}',
                bussinessname: event.data.cusname!,
                state: '',
                email: '',
                district: '',
                bussinessaddr: event.data.cusnameAddress ?? '',
                contactsmsno: event.data.custorcontact ?? '',
                gstno: event.data.cusnameGstNumber ?? '',
                customerType: event.data.customerType ?? ''),
            discount: parsedDiscount.toString(),
            billTotal: parsedTotalToPay.toString(),
            gstCesstotal: parsedGstTotal.toString(),
            paidAmt: parsedPaidAmount.toString()));

        log('ESC POS Data: $escPos');

        await SunmiPrinter.initPrinter();
        await SunmiPrinter.startTransactionPrint(true);
        await SunmiPrinter.printRawData(Uint8List.fromList(escPos));
        await SunmiPrinter.exitTransactionPrint(true);
    } catch (e) {
        log('Error (printing): $e');
    }
}


 else {
          log('not sunmi -------------------------------------------');
          printBill(PrintBill(from: 4,
              isFromBillView: true,
              status: event.data.creditOrCleared ?? '',
              totalQty: totalQty.toString(),
              billItems: billItems,
              invNo: event.data.custominvno!,
              allItemTotal: event.data.subTotal!.toStringAsFixed(1),
              cusOutstanding: '',
              isOutstandingDebit: true,
              customer: Customerslist(
                  cusid: '${event.data.cusid!}',
                  bussinessname: event.data.cusname!,
                  state: '',
                  email: '',
                  district: '',
                  bussinessaddr: event.data.cusnameAddress ?? '',
                  contactsmsno: event.data.custorcontact ?? '',
                  gstno: event.data.cusnameGstNumber ?? '',
                  customerType: event.data.customerType ?? ''),
              discount: event.data.discountamount!.toStringAsFixed(1),
              billTotal: event.data.totalHavetoPayamount!.toStringAsFixed(1),
              gstCesstotal: event.data.totaltaxamount!.toStringAsFixed(1),
              paidAmt: state.paidamount.toStringAsFixed(1).toString()));
        }
      } catch (e) {
        log('Error (printing) :$e');
      }
    });
  }
}
