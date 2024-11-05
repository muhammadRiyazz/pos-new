import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/cata%20model/cata_model.dart';
import 'package:p_o_s/domain/report/report.model.dart';
import 'package:p_o_s/domain/viewbill%20model/view_bill_model.dart';
import 'package:p_o_s/infrastructure/server.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  ReportBloc() : super(ReportState.initial()) {
    on<FetchTotalSaleReports>((event, emit) async {
      List<Reportmodel> billList = [];
      emit(state.copyWith(
        isLoading: true,
      ));
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

        log('FetchTotalSaleReports  event call');
        if (isConnected) {
          if (event.sDate == '' || event.eDate == '') {
            String queryfor100 =
                "SELECT TOP 100 Id, cusname, custominvno, TotalHavetoPayamount, Invoicedate FROM dbo.InvoiceAccountDetail GO WHERE UserID ='$id' ORDER BY Invoicedate DESC";
            String result = await mssqlConnection!.getData(queryfor100);
            billList = reportmodelFromJson(result);
          } else {
            var sdate =
                DateFormat('dd/MM/yyyy').format(DateTime.parse(event.sDate));
            var edate =
                DateFormat('dd/MM/yyyy').format(DateTime.parse(event.eDate));
            log(sdate);
            log(edate);
            log('login idddd $id');

            String queryWithDate =
                "SELECT Id,cusname,custominvno,TotalHavetoPayamount,Invoicedate  FROM dbo.InvoiceAccountDetail GO WHERE UserID = '$id' AND Invoicedate BETWEEN Convert(datetime, '$sdate', 105) AND Convert(datetime, '$edate', 105)";
            log(queryWithDate);
            String result = await mssqlConnection!.getData(queryWithDate);
            log(result);
            billList = reportmodelFromJson(result);
          }

          emit(state.copyWith(
            isLoading: false,
            isError: false,
            rBillList: billList,
          ));
        } else {
          emit(state.copyWith(
            isLoading: false,
            isError: true,
          ));
          // Fluttertoast.showToast(msg: 'Database disconnected');
          // Fluttertoast.showToast(msg: 'report bloc 1');

          log('not connected');
        }
      } catch (e) {
        log("Error from report bloc (FetchTotalSaleReports) : $e");
      }
    });
    on<FetchTotalSaleReturnReports>((event, emit) async {
      List<Reportmodel> billList = [];

      emit(state.copyWith(
        isLoading: true,
      ));
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final logindata = prefs.getString('logindata');
      String? jsonString = prefs.getString('serverconn');
      log(jsonString.toString());
      String databaseName = jsonDecode(jsonString.toString())['databaseName'];
      Map<String, dynamic> jsonData = json.decode(logindata!);

      final id = jsonData['username'];
      log('login idddd $id');

      try {
        final bool isConnected = await databaseConn();

        log('FetchTotalSaleReports  event call');
        if (isConnected) {
          if (event.sDate == '' || event.eDate == '') {
            String queryfor100 =
                "SELECT TOP 100 Id,cusname,custominvno,TotalHavetoPayamount,Invoicedate FROM dbo.SalesReturnAccounts GO WHERE UserId='$id' ORDER BY Invoicedate DESC";
            String result = await mssqlConnection!.getData(queryfor100);
            billList = reportmodelFromJson(result);
          } else {
            var sdate =
                DateFormat('dd/MM/yyyy').format(DateTime.parse(event.sDate));
            var edate =
                DateFormat('dd/MM/yyyy').format(DateTime.parse(event.eDate));
            log(sdate);
            log(edate);
            log('login idddd $id');

            String queryWithDate =
                "SELECT Id,cusname,custominvno,TotalHavetoPayamount,Invoicedate  FROM dbo.SalesReturnAccounts GO WHERE UserID = '$id' AND Invoicedate BETWEEN Convert(datetime, '$sdate', 105) AND Convert(datetime, '$edate', 105)";
            log(queryWithDate);
            String result = await mssqlConnection!.getData(queryWithDate);
            log(result);
            billList = reportmodelFromJson(result);
          }

          emit(state.copyWith(
            isLoading: false,
            isError: false,
            rBillReturnList: billList,
          ));
        } else {
          emit(state.copyWith(
            isLoading: false,
            isError: true,
          ));
          // Fluttertoast.showToast(msg: 'Database disconnected');
          // Fluttertoast.showToast(msg: 'report bloc 2');

          log('not connected');
        }
      } catch (e) {
        log("Error from report bloc (FetchTotalSaleReports) : $e");
      }
    });

    on<Todayreport>((event, emit) async {
      emit(state.copyWith(
        isTotalLoading: true,
      ));
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final logindata = prefs.getString('logindata');
      String? jsonString = prefs.getString('serverconn');
      log(jsonString.toString());
      Map<String, dynamic> jsonData = json.decode(logindata!);

      final id = jsonData['username'];
      log('login idddd $id');
      try {
        final bool isConnected = await databaseConn();

        if (isConnected) {
          var currentDate = DateFormat('dd/MM/yyyy').format(DateTime.now());

          String salequery =
              "SELECT Id,cusname,custominvno,TotalHavetoPayamount,Invoicedate  FROM dbo.InvoiceAccountDetail GO WHERE UserID = '$id' AND Invoicedate = Convert(datetime, '$currentDate', 105) ";
          log(salequery);
          String resultsale = await mssqlConnection!.getData(salequery);
          log(resultsale);
          List<Reportmodel> salelist = reportmodelFromJson(resultsale);

          String saleretunequery =
              "SELECT Id,cusname,custominvno,TotalHavetoPayamount,Invoicedate  FROM dbo.SalesReturnAccounts GO WHERE UserID = '$id' AND Invoicedate = Convert(datetime, '$currentDate', 105) ";
          log(saleretunequery);
          String resultretunesale =
              await mssqlConnection!.getData(saleretunequery);
          log(resultretunesale);
          List<Reportmodel> saleretunelist =
              reportmodelFromJson(resultretunesale);

          double totalSale = 0;
          double totalretuneSale = 0;

          for (Reportmodel item in salelist) {
            totalSale += item.totalHavetoPayamount;
          }

          for (Reportmodel item in saleretunelist) {
            totalretuneSale += item.totalHavetoPayamount;
          }

          final root = await prefs.getString('root');

          emit(state.copyWith(
              isTotalLoading: false,
              isError: false,
              root: root ?? "",
              totalSale: totalSale,
              totalSaleReturn: totalretuneSale));
        } else {
          emit(state.copyWith(
            isTotalLoading: false,
            isError: true,
          ));
          // Fluttertoast.showToast(msg: 'Database disconnected');
          // Fluttertoast.showToast(msg: 'report bloc 3');

          log('not connected');
        }
      } catch (e) {
        emit(state.copyWith(
          isTotalLoading: false,
          isError: true,
        ));
        log("Error from report bloc (FetchTotalSaleReports) : $e");
      }
    });
  }
}
