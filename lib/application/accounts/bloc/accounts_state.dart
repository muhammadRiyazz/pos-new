part of 'accounts_bloc.dart';

@freezed
class AccountsState with _$AccountsState {
  factory AccountsState(
      {required bool isLoading,
      required bool isError,
      required bool isAmtsLoading,
      required bool isOpningLoading,
      required bool isclosingLoading,
      required double outstandingCreditAmt,
      required double openingAmt,
      required double closingAmt,
      required List<AllAccountModel> accountsList}) = _AccountsState;
  factory AccountsState.initial() {
    return AccountsState(
        isError: false,
        isLoading: true,
        isAmtsLoading: true,
        isOpningLoading: true,
        isclosingLoading: true,
        openingAmt: 0.0,
        closingAmt: 0.0,
        accountsList: [],
        outstandingCreditAmt: 0);
  }
}
