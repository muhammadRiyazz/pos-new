import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/accounts%20emiting%20model/all_accounts.dart';
import 'package:p_o_s/domain/accounts%20model/account_model.dart';
import 'package:p_o_s/infrastructure/calculations/credit_outstanding.dart';
import 'package:p_o_s/infrastructure/server.dart';

part 'accounts_event.dart';
part 'accounts_state.dart';
part 'accounts_bloc.freezed.dart';

class AccountsBloc extends Bloc<AccountsEvent, AccountsState> {
  AccountsBloc() : super(AccountsState.initial()) {
    on<OutStandingCreditOpngClsg>((event, emit) async {
      emit(state.copyWith(isAmtsLoading: true));
      try {
        final bool isConnected = await databaseConn();

        if (isConnected == true) {
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
          // log('combinedResult: $combinedResult');

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

          // log("DR: $dr, CR: $cr");

          final outstandingCreditamt = cr - dr;

          emit(state.copyWith(
            isAmtsLoading: false,
            outstandingCreditAmt: outstandingCreditamt,
            isError: false,
          ));
        } else {
          emit(state.copyWith(isLoading: false, isError: true));

          // log('not connected');
        }
      } catch (e) {
        emit(state.copyWith(isLoading: false, isError: true));

        // log('not connected');
        // log('Error: $e');
      }
    });

    on<OpeningBal>((event, emit) async {
      // log('>>>>>>>>>> sdate  ${event.sDate}');
      // log('>>>>>>>>>> id  ${event.cusid}');
      emit(state.copyWith(isOpningLoading: true));
      try {
        final bool isConnected = await databaseConn();
        if (isConnected == true) {
          // Combined query for all necessary data
          String combinedQuery = '''
        SELECT 'InvoiceAccountDetail' AS TableName, cusid, TotalHavetoPayamount, NULL AS CrORDr, NULL AS Amount
        FROM dbo.InvoiceAccountDetail
        WHERE cusid = '${event.cusid}' AND Invoicedate <= '${event.sDate.toString()} 00:00:00.000'
        UNION ALL
        SELECT 'PurchaseReturnAccounts', cusid, TotalHavetoPayamount, NULL, NULL
        FROM dbo.PurchaseReturnAccounts
        WHERE cusid = '${event.cusid}' AND Invoicedate <= '${event.sDate.toString()} 00:00:00.000'
        UNION ALL
        SELECT 'PurchaseAccountDetail', cusid, TotalHavetoPayamount, NULL, NULL
        FROM dbo.PurchaseAccountDetail
        WHERE cusid = '${event.cusid}' AND Invoicedate <=  '${event.sDate.toString()} 00:00:00.000'
        UNION ALL
        SELECT 'SalesReturnAccounts', cusid, TotalHavetoPayamount, NULL, NULL
        FROM dbo.SalesReturnAccounts
        WHERE cusid = '${event.cusid}' AND Invoicedate <= '${event.sDate.toString()} 00:00:00.000'
        UNION ALL
        SELECT 'PayorEXOpeningBalance', cusid, NULL, CrORDr, Amount
        FROM dbo.PayorEXOpeningBalance
        WHERE cusid = '${event.cusid}' AND Date <= '${event.sDate.toString()} 00:00:00.000'
        UNION ALL
        SELECT 'PayorEX', VendIDOreCusID AS cusid, NULL, PayCrDr AS CrORDr, paidamount AS Amount
        FROM dbo.PayorEX
        WHERE VendIDOreCusID = '${event.cusid}' AND PayOrExpDate <= '${event.sDate.toString()} 00:00:00.000'
      ''';

          var combinedResult = await mssqlConnection!.getData(combinedQuery);
          List<Map<String, dynamic>> responseData =
              (json.decode(combinedResult) as List)
                  .map((item) => item as Map<String, dynamic>)
                  .toList();
          // log('combinedResult: $combinedResult');

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

          // log("DR: $dr, CR: $cr");

          // final o = dr - cr;
          // log('openingBal >>>>> openingDR $openingDR - openingCR $openingCR');
          // log('openingBal >>>>>  ${cr - dr}');
          emit(state.copyWith(isOpningLoading: false, openingAmt: dr - cr));
        } else {
          // Fluttertoast.showToast(msg: 'Database disconnected');
          // Fluttertoast.showToast(msg: 'acc bloc 1');
        }
      } catch (e) {
        // log('Error: Accounts Bloc (OpeningBal) $e');
      }
    });
    on<ClosingBal>((event, emit) async {
      // log('>>>>>  ClosingBal >>>>> edate  ${event.eDate}');
      // log('>>>>>>>>>> id  ${event.cusid}');
      emit(state.copyWith(isclosingLoading: true));
      try {
        final bool isConnected = await databaseConn();
        if (isConnected == true) {
          // Combined query for all necessary data
          String combinedQuery = '''
        SELECT 'InvoiceAccountDetail' AS TableName, cusid, TotalHavetoPayamount, NULL AS CrORDr, NULL AS Amount
        FROM dbo.InvoiceAccountDetail
        WHERE cusid = '${event.cusid}' AND Invoicedate <= '${event.eDate.toString()} 00:00:00.000'
        UNION ALL
        SELECT 'PurchaseReturnAccounts', cusid, TotalHavetoPayamount, NULL, NULL
        FROM dbo.PurchaseReturnAccounts
        WHERE cusid = '${event.cusid}' AND Invoicedate <= '${event.eDate.toString()} 00:00:00.000'
        UNION ALL
        SELECT 'PurchaseAccountDetail', cusid, TotalHavetoPayamount, NULL, NULL
        FROM dbo.PurchaseAccountDetail
        WHERE cusid = '${event.cusid}' AND Invoicedate <= '${event.eDate.toString()} 00:00:00.000'
        UNION ALL
        SELECT 'SalesReturnAccounts', cusid, TotalHavetoPayamount, NULL, NULL
        FROM dbo.SalesReturnAccounts
        WHERE cusid = '${event.cusid}' AND Invoicedate <= '${event.eDate.toString()} 00:00:00.000'
        UNION ALL
        SELECT 'PayorEXOpeningBalance', cusid, NULL, CrORDr, Amount
        FROM dbo.PayorEXOpeningBalance
        WHERE cusid = '${event.cusid}' AND Date <= '${event.eDate.toString()} 00:00:00.000'
        UNION ALL
        SELECT 'PayorEX', VendIDOreCusID AS cusid, NULL, PayCrDr AS CrORDr, paidamount AS Amount
        FROM dbo.PayorEX
        WHERE VendIDOreCusID = '${event.cusid}' AND PayOrExpDate <= '${event.eDate.toString()} 00:00:00.000'
      ''';

          var combinedResult = await mssqlConnection!.getData(combinedQuery);
          List<Map<String, dynamic>> responseData =
              (json.decode(combinedResult) as List)
                  .map((item) => item as Map<String, dynamic>)
                  .toList();
          // log('combinedResult: $combinedResult');

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

          // log("DR: $dr, CR: $cr");

          emit(state.copyWith(isclosingLoading: false, closingAmt: dr - cr));
        } else {
          // Fluttertoast.showToast(msg: 'Database disconnected');
          // Fluttertoast.showToast(msg: 'acc bloc 2');
        }
      } catch (e) {
        // log('Error: Accounts Bloc (closingBal) $e');
      }
    });

    on<FetchAccounts>((event, emit) async {
      log('FetchAccounts  >> eDate' + event.eDate.toString());
      log('FetchAccounts  >> sDate' + event.sDate.toString());
      log('FetchAccounts  >> CusId' + event.cusId.toString());

      emit(state.copyWith(isLoading: true));
      try {
        final bool isConnected = await databaseConn();
        //    log('connected done');

        if (isConnected == true) {
          //    log('connected CustomerpartBloc 2');
          try {
            // String query =
            //     "SELECT PayOrExpDate,PayOrExpID, PayCrDr, paidamount,RootType,PayINVid FROM dbo.PayorEX GO WHERE VendIDOreCusID ='${event.cusId}' AND PayOrExpDate BETWEEN '${event.sDate} 00:00:00.000' AND '${event.eDate} 00:00:00.000'";
            // String payorEX = await mssqlConnection!.getData(query);
            // String payorEXOpeningQueryy =
            //     "SELECT CrORDr, Amount, Date FROM dbo.PayorEXOpeningBalance GO WHERE CusId ='${event.cusId}' AND Date BETWEEN '${event.sDate} 00:00:00.000' AND '${event.eDate} 00:00:00.000'";
            // String payorEXOpening =
            //     await mssqlConnection!.getData(payorEXOpeningQueryy);
            // String query2 =
            //     "SELECT Invoicedate, TotalHavetoPayamount FROM dbo.SalesReturnAccounts GO WHERE cusid ='${event.cusId}' AND Invoicedate BETWEEN '${event.sDate} 00:00:00.000' AND '${event.eDate} 00:00:00.000'";
            // String salesReturn = await mssqlConnection!.getData(query2);
            // String query3 =
            //     "SELECT Invoicedate, TotalHavetoPayamount FROM dbo.PurchaseAccountDetail GO WHERE cusid ='${event.cusId}' AND Invoicedate BETWEEN '${event.sDate} 00:00:00.000' AND '${event.eDate} 00:00:00.000'";
            // String purchaseAccounts = await mssqlConnection!.getData(query3);
            // String query4 =
            //     "SELECT Invoicedate, TotalHavetoPayamount FROM dbo.InvoiceAccountDetail GO WHERE cusid ='${event.cusId}' AND Invoicedate BETWEEN '${event.sDate} 00:00:00.000' AND '${event.eDate} 00:00:00.000'";
            // String invoiceAccounts = await mssqlConnection!.getData(query4);
            // String query5 =
            //     "SELECT Invoicedate, TotalHavetoPayamount FROM dbo.PurchaseReturnAccounts GO WHERE cusid ='${event.cusId}' AND Invoicedate BETWEEN '${event.sDate} 00:00:00.000' AND '${event.eDate} 00:00:00.000'";
            // String puchaseReturnAccounts =
            //     await mssqlConnection!.getData(query5);
            // log('payorEX  ' + payorEX);
            // log('1');
            // log('payorEXOpening  ' + payorEXOpening);
            // log('salesReturn  ' + salesReturn);
            // log('purchaseAccounts  ' + purchaseAccounts);
            // log('invoiceAccounts  ' + invoiceAccounts);
            // log('puchaseReturnAccounts  ' + puchaseReturnAccounts);
            // List<AllAccountModel> list = [];
            // List<AllAccountModel> accountspayorEXList =
            //     allPayorEXModelFromJson(payorEX);
            // List<AllAccountModel> accountspayorEXOpeningList =
            //     allPayorEXOpeningFromJson(payorEXOpening);
            // List<AllAccountModel> accountssalesReturnList =
            //     salesReturnModelFromJson(salesReturn);

            // List<AllAccountModel> purchaseAccountList =
            //     purchaseModelFromJson(purchaseAccounts);

            // List<AllAccountModel> invoiceAccountList =
            //     saleModelFromJson(invoiceAccounts);
            // List<AllAccountModel> puchaseReturnAccountList =
            //     purchaseReturnModelFromJson(puchaseReturnAccounts);
            // list.addAll(puchaseReturnAccountList);
            // list.addAll(accountspayorEXList);
            // list.addAll(accountspayorEXOpeningList);
            // list.addAll(accountssalesReturnList);
            // list.addAll(purchaseAccountList);
            // list.addAll(invoiceAccountList);
            // list.sort((a, b) => a.date!.compareTo(b.date!));
            // emit(state.copyWith(
            //     isLoading: false, isError: false, accountsList: list));
            String combinedQuery = """
    SELECT PayOrExpDate AS date, paidamount AS amt, PayCrDr AS type, RootType AS decs, PayINVid AS invNo, PayOrExpID
    FROM dbo.PayorEX
    WHERE VendIDOreCusID = '${event.cusId}'
AND PayOrExpDate BETWEEN '${event.sDate} 00:00:00.000' AND '${event.eDate} 00:00:00.000'
UNION ALL
SELECT Date AS date, Amount AS amt, CrORDr AS type, 'PaymentDR' AS decs, '' AS invNo, '' AS payOrExpID
FROM dbo.PayorEXOpeningBalance
WHERE Cusid = '${event.cusId}'
    AND Date BETWEEN '${event.sDate} 00:00:00.000' AND '${event.eDate} 00:00:00.000'

    UNION ALL

    SELECT Invoicedate AS date, TotalHavetoPayamount AS amt, 'Cr' AS type, 'Sales Return' AS decs, '' AS invNo, '' AS payOrExpID
    FROM dbo.SalesReturnAccounts
    WHERE cusid = '${event.cusId}'
AND Invoicedate BETWEEN '${event.sDate} 00:00:00.000' AND '${event.eDate} 00:00:00.000'
UNION ALL
SELECT Invoicedate AS date, TotalHavetoPayamount AS amt, 'Cr' AS type, 'Purchase' AS decs, '' AS invNo, '' AS payOrExpID
FROM dbo.PurchaseAccountDetail
WHERE cusid = '${event.cusId}'
    AND Invoicedate BETWEEN '${event.sDate} 00:00:00.000' AND '${event.eDate} 00:00:00.000'

    UNION ALL

    SELECT Invoicedate AS date, TotalHavetoPayamount AS amt, 'Dr' AS type, 'Sale' AS decs, '' AS invNo, '' AS payOrExpID
    FROM dbo.InvoiceAccountDetail
    WHERE cusid = '${event.cusId}'
AND Invoicedate BETWEEN '${event.sDate} 00:00:00.000' AND '${event.eDate} 00:00:00.000'
UNION ALL
SELECT Invoicedate AS date, TotalHavetoPayamount AS amt, 'Dr' AS type, 'Purchase Return' AS decs, '' AS invNo, '' AS payOrExpID
FROM dbo.PurchaseReturnAccounts
WHERE cusid = '${event.cusId}'
    AND Invoicedate BETWEEN '${event.sDate} 00:00:00.000' AND '${event.eDate} 00:00:00.000'
  """;

            String response = await mssqlConnection!.getData(combinedQuery);

            log('fetchaccountss    >>>>>>>>>>>>>>>>  ' + response);

            List<AllAccountModel> list = fromJson(response);
            log(list.toString());
            list.sort((a, b) => a.date!.compareTo(b.date!));
            emit(state.copyWith(
                isLoading: false, isError: false, accountsList: list));
          } catch (e) {
            log('Error: AccountsBloc (FetchAccounts)  !:$e');
          }

          // list.addAll(accountsList);
        } else {
          Fluttertoast.showToast(msg: 'Databse disconnected');
        }
      } catch (e) {
        log('Error: Accounts Bloc (FetchAccounts) $e');
      }
    });
  }
}
