import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/root%20model/rootmodel.dart';
import 'package:p_o_s/infrastructure/login/login.dart';
import 'package:p_o_s/infrastructure/server.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<Login>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: 0, login: false));

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      bool? servercon = prefs.getBool('server');

      if (servercon != null && servercon) {
        try {
          final bool isConnected = await databaseConn();
          // log('connected done edit');

          if (isConnected) {
            String query = 'SELECT  Id,username,password  FROM dbo.login GO';
            String result = await mssqlConnection!.getData(query);
            log(result);
            List<Map<String, dynamic>> resultList =
                jsonDecode(result).cast<Map<String, dynamic>>();

            if (checkCredentials(event.username, event.pass, resultList)) {
              log(event.username);
              // emit(state.copyWith(
              //     isLoading: true, isError: 1, username: event.username));

              List<Map<String, dynamic>> logList = resultList;

              final resultData = logList.firstWhere(
                (entry) => entry['username'] == event.username,
              );

              String resultDataString = json.encode(resultData);

              await prefs.setString('logindata', resultDataString);
              // await prefs.setBool('login', true);

              log(resultDataString);
              log('Credentials are valid.');


String Rootquery =
    "SELECT Root FROM dbo.CustomerRootmaster WHERE UserName='${event.username}'";

              String Rootresult = await mssqlConnection!.getData(Rootquery);

              List<Rootmodel> rootdata = rootmodelFromJson(Rootresult);

              log(Rootresult);

              emit(state.copyWith(
                isLoading: false,
                rootlist: rootdata,
                username: event.username,
                login: true,
              ));
            } else {
              emit(state.copyWith(isLoading: false, isError: 3));

              log('Invalid credentials.');
            }
          } else {
            emit(state.copyWith(isLoading: false, isError: 2));
          }
        } catch (e) {
          emit(state.copyWith(isLoading: false, ));

          log('Error: $e');
        }
      } else {
        log('Error:server');

        emit(state.copyWith(isLoading: false,isError: 4));
      }
    });

    on<Rootselection>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: 0, login: false));

      final SharedPreferences prefs = await SharedPreferences.getInstance();

      try {
        await prefs.setBool('login', true);

        await prefs.setString('root', '${event.root}');

       

        emit(state.copyWith(
          isLoading: false,
          isError: 1,root:event.root 
          
        ));
      } catch (e) {}
    });
  }
}
