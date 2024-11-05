import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:p_o_s/commons/profile_varibles.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/profile%20model/profile_model.dart';
import 'package:p_o_s/infrastructure/server.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<GetProfile>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        final bool isConnected = await databaseConn();
        if (isConnected) {
          String query =
              'SELECT cmpname,cmpadd,cmpgstno,cmpemail  FROM dbo.Settings GO';
          String result = await mssqlConnection!.getData(query);
          List<ProfileModel> data = profileModelFromMap(result);
          log('profile >>>>');
          log(profileModelFromMap(result).toString());
          log(data[0].cmpname.toString());
          log(data[0].cmpadd.toString());
          log(data[0].cmpemail.toString());
          log(data[0].cmpgstno.toString());
          cmpname = data[0].cmpname.toString();
          cmpAdd = data[0].cmpadd.toString();
          cmpgst = data[0].cmpgstno.toString();
          cmpcontact = data[0].cmpemail.toString();
          emit(state.copyWith(isLoading: false));
        } else {
          emit(state.copyWith(isLoading: false));
          // Fluttertoast.showToast(msg: 'Database disconnected');
                              // Fluttertoast.showToast(msg: 'profile bloc 1');

        }
      } catch (e) {
        emit(state.copyWith(isLoading: false));
        log('Error:ProfileBloc  (GetProfile)  $e');
        // Fluttertoast.showToast(msg: 'Somthing went wrong!');
      }
    });
  }
}
