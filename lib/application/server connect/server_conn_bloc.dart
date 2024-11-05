import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:mssql_connection/mssql_connection.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/conn_model.dart';
import 'package:p_o_s/infrastructure/server.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

part 'server_conn_event.dart';
part 'server_conn_state.dart';
part 'server_conn_bloc.freezed.dart';

class ServerConnBloc extends Bloc<ServerConnEvent, ServerConnState> {
  ServerConnBloc() : super(ServerConnState.initial()) {
    on<Conn>((event, emit) async {
      emit(ServerConnState(isError: 0, isLoading: true, passcodeinfo: true));
      MssqlConnection mssqlConnection = MssqlConnection.getInstance();

      try {
        bool isConnected = await mssqlConnection.connect(
          ip: event.ip,
          port: event.port,
          databaseName: event.databaseName,
          username: event.username,
          password: event.password,
          timeoutInSeconds: 15,
        );

        log(isConnected.toString());
        if (isConnected) {
          Map<String, dynamic> jsonData = {
            "ip": event.ip,
            "port": event.port,
            "databaseName": event.databaseName,
            "username": event.username,
            "password": event.password,
            "timeoutInSeconds": 15,
          };

          final SharedPreferences prefs = await SharedPreferences.getInstance();
          String jsonString = json.encode(jsonData);
          await prefs.setString('serverconn', jsonString);
          await prefs.setBool('server', true);

          log(jsonData.toString());

          log('isConnected');

          emit(ServerConnState(
              isError: 1, isLoading: false, passcodeinfo: true));
        } else {
          emit(ServerConnState(
              isError: 2, isLoading: false, passcodeinfo: true));
          log('Notconnected');
        }
      } catch (e) {
        emit(ServerConnState(isError: 2, isLoading: false, passcodeinfo: true));
        log(e.toString());
      }
    });

    on<Passcode>((event, emit) async {

      try {
        log('Passcode bloc hit  >>>  ');
      emit(ServerConnState(isError: 0, isLoading: true, passcodeinfo: false));
      final response =
          await http.get(Uri.parse('https://www.ballast.in/passcode.txt'));
          log(response.body.toString());
      log('Passcode bloc hit  >>> 1 ');
      if (response.statusCode == 200) {
        if (event.passcodepin.toString() == response.body.toString()) {
          log('pin done');
          emit(ServerConnState(
              isError: 0, isLoading: false, passcodeinfo: true));
        } else {
          emit(ServerConnState(
              isError: 4, isLoading: false, passcodeinfo: false));
          log('incorrect pin');
        }
      } else {
        emit(
            ServerConnState(isError: 2, isLoading: false, passcodeinfo: false));
        throw Exception('Failed to load text');
      }
      } catch (e) {
        log(e.toString());
      }
      
    });

    on<Restart>((event, emit) async {
      emit(ServerConnState(isError: 0, isLoading: false, passcodeinfo: false));
    });
  }
}
