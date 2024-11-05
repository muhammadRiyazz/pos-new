import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/accounts%20model/account_model.dart';
import 'package:p_o_s/domain/customers/customers_list.dart';
import 'package:p_o_s/domain/recipt%20and%20paymnets%20print%20model/recipt_and_payments_printModel.dart';
import 'package:p_o_s/infrastructure/bluethooth_print_func.dart';
import 'package:p_o_s/infrastructure/calculations/pay_id_next.dart';
import 'package:p_o_s/infrastructure/print_functions.dart';
import 'package:p_o_s/infrastructure/server.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(PaymentState.initial()) {
    String payidno = '';
    AccountsInsertModel? accountsInsertModel;
    on<Payment>((event, emit) async {
      accountsInsertModel = event.model;
      emit(state.copyWith(
        isLoading: true,        addpayment: false

      ));
      log('message');
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final logindata = prefs.getString('logindata');

      Map<String, dynamic> jsonData = json.decode(logindata!);

      final username = jsonData['username'];
      log('login idddd $username');
      final bool isConnected = await databaseConn();

      if (isConnected == true) {
        log('connectedddd');
        String query2 =
            "SELECT MAX(CONVERT(INT, RIGHT(PayOrExpID, LEN(PayOrExpID)-3)))  FROM dbo.PayorEX  ";
        String result2 = await mssqlConnection!.getData(query2);
        payidno = nextpayNo(result: result2);
        try {
          String accountINSERT =
              "INSERT INTO dbo.PayorEX (PayOrExpID,VendIDOreCusID,VendIDOreCusName,PayOrExpDate,CAT,Reff,paidby,description,totalamount,totalpaidamount,Amount,totaltaxamount,openingbalance,paidamount,PayCrDr,PayINVid,RootType,UserID) VALUES ('$payidno','${event.model.vendIdOreCusId}','${event.model.vendIdOreCusName}','${event.model.payOrExpDate}','${event.model.cat}','${event.model.reff}','${event.model.paidby}','${event.model.description}','${event.model.totalamount}','${event.model.totalpaidamount}','${event.model.amount}','${event.model.totaltaxamount}','${event.model.openingbalance}','${event.model.paidamount}','${event.model.payCrDr}','${event.model.payInVid}','${event.model.rootType}','$username');";

          await mssqlConnection!.writeData(accountINSERT);
          // Fluttertoast.showToast(msg: 'Amount Updated');
          emit(state.copyWith(isLoading: false, addpayment: true));
        } catch (e) {
          emit(state.copyWith(
            isLoading: false,
          ));

          log('ERROR :PaymentBloc  (Payment) $e');
          Fluttertoast.showToast(msg: 'Something went wrong');
        }
      } else {
        emit(state.copyWith(
          isLoading: false,
        ));

        // Fluttertoast.showToast(msg: 'database disconnected');
                                                // Fluttertoast.showToast(msg: 'paym bloc 1');

      }
    });

    on<Paymentbillprint>((event, emit) async {
      final double totalOutstanding = accountsInsertModel!.outstaing!;
      final double paidamount = accountsInsertModel!.paidamount!;
      final String paidamountType = accountsInsertModel!.payCrDr!;
      double balance = 0.00;
      String balanceType = '';

      if (accountsInsertModel!.outstaingtype == 'Dr') {
        if (paidamountType == 'Cr') {
          balance = totalOutstanding.abs() - paidamount;

          if (balance < 0) {
            balanceType = 'Cr';
          } else {
            balanceType = 'Dr';
          }
        } else {
          balance = totalOutstanding.abs() + paidamount;
          balanceType = 'Dr';
        }
      } else if (accountsInsertModel!.outstaingtype! == 'Cr') {
        if (paidamountType == 'Cr') {
          balanceType = 'Cr';

          balance = totalOutstanding.abs() + paidamount;
        } else {
          balance = totalOutstanding.abs() - paidamount;

          if (balance < 0) {
            balanceType = 'Dr';
          } else {
            balanceType = 'Cr';
          }
        }
      }
      if (balance == 0) {
        balanceType = '';
      }
      if (event.sunmi) {
        try {
          final List<int> escPos = await sunmiReciptAndPay(PrintReciptOrPay(
              balance: "${balance.abs().toString()} $balanceType",
              customer: event.customer,
              id: payidno,
              paid: '${paidamount.toString()} $paidamountType',
              totalOutstanding:
                  '${totalOutstanding.toString()} ${accountsInsertModel!.outstaingtype!}'));
          await SunmiPrinter.initPrinter();
          await SunmiPrinter.startTransactionPrint(true);
          await SunmiPrinter.printRawData(Uint8List.fromList(escPos));
          await SunmiPrinter.exitTransactionPrint(true);
        } catch (e) {
          log('error: $e');
        }
      } else {
        try {
          printreciptAccounts(PrintReciptOrPay(
              balance: "${balance.abs().toString()} $balanceType",
              customer: event.customer,
              id: payidno,
              paid: '${paidamount.toString()} $paidamountType',
              totalOutstanding:
                  '${totalOutstanding.toString()} ${accountsInsertModel!.outstaingtype!}'));
        } catch (e) {
          log('error: $e');
        }
      }
    });




     on<Clearprint>((event, emit) async {
      emit(state.copyWith(
        addpayment: false
      ));
     
    });
  }
}
