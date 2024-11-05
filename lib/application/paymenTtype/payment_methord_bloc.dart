import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/infrastructure/server.dart';

part 'payment_methord_event.dart';
part 'payment_methord_state.dart';

part 'payment_methord_bloc.freezed.dart';

class PaymentMethordBloc
    extends Bloc<PaymentMethordEvent, PaymentMethordState> {
  PaymentMethordBloc() : super(PaymentMethordState.initial()) {
    on<Fetchtypes>((event, emit) async {
      try {
        final bool isConnected = await databaseConn();

        if (isConnected) {
          String query = "SELECT PaymentMethod  FROM dbo.PaymentMethod GO";

          String result = await mssqlConnection!.getData(query);
          log(result);
          List<String> paymentMethods = extractPaymentMethods(result);

          emit(state.copyWith(paymenbtTypes: paymentMethods));
        } else {
          emit(state.copyWith(paymenbtTypes: []));
        }
      } catch (e) {
        log("Error from report bloc (FetchTotalSaleReports) : $e");
      }
    });
  }
}

List<String> extractPaymentMethods(String jsonString) {
  List<dynamic> parsedJson = json.decode(jsonString);
  List<String> paymentMethods = [];

  for (var item in parsedJson) {
    String paymentMethod = item['PaymentMethod'];
    paymentMethods.add(paymentMethod);
  }

  return paymentMethods;
}
