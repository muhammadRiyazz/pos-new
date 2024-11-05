part of 'customerpart_bloc.dart';

@freezed
class CustomerpartState with _$CustomerpartState {
  factory CustomerpartState(
      {required bool isLoading,
      required int isError,
   required   List<String> customerAttendanceList,
      Customerslist? biller,
             RemartData? slctremark,
      required int remarkStatus,

      required List<Customerslist> customerlist}) = _CustomerpartState;
  factory CustomerpartState.initial() {
    return CustomerpartState(isError: 0, isLoading: false, customerlist: [],customerAttendanceList: [],remarkStatus: 0);
  }
}
