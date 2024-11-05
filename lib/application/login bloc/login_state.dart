part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState(
      {required bool isLoading,
      required int isError,
      required bool login,
      required String username,
            required String root,

      required List<Rootmodel> rootlist
      }) = _LoginState;
  factory LoginState.initial() {
    return LoginState( isError: 0, isLoading: false,username: 'User',login: false,rootlist: [],root: '') ;
  }
}
