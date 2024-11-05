import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/invoiceDetail/appentydata.dart';
import 'package:p_o_s/infrastructure/server.dart';

part 'appentyno_event.dart';
part 'appentyno_state.dart';
part 'appentyno_bloc.freezed.dart';

class AppentynoBloc extends Bloc<AppentynoEvent, AppentynoState> {
  AppentynoBloc() : super(AppentynoState.initial()) {
    on<FetchAppEnty>((event, emit) async {
      log('FetchAppEnty-------');
      try {
        final bool isConnected = await databaseConn();

        if (isConnected) {
// Assuming your connection returns data in JSON format as a string
          String qry =
              'SELECT InvoiceNumberBtoC, InvoiceNumberBtoB, InvoiceReturnNumberBtoC, InvoiceReturnNumberBtoB FROM dbo.AppentryNumber';
          String qryrslt = await mssqlConnection!.getData(qry);
          log(qryrslt);
// Decode the JSON string into a List of Maps
          List<dynamic> jsonData = jsonDecode(qryrslt);

// Convert the JSON data into a list of InvoiceInfo objects
          List<InvoiceInfo> qryrsltdata =
              jsonData.map((json) => InvoiceInfo.fromJson(json)).toList();

          appentydataresult = qryrsltdata;
        }
      } catch (e) {
        log(e.toString());
      }
    });
  }
}
