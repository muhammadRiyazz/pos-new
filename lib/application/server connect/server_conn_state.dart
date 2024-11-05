part of 'server_conn_bloc.dart';

@freezed
class ServerConnState with _$ServerConnState {
  factory ServerConnState({
    required bool isLoading,
    required int isError,
    required bool passcodeinfo,
  }) = _ServerConnState;
  factory ServerConnState.initial() {
    return ServerConnState(
        isError: 0, isLoading: false, passcodeinfo: false);
  }
}
