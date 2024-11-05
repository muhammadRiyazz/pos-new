part of 'accounts_bloc.dart';

@freezed
class AccountsEvent with _$AccountsEvent {
  const factory AccountsEvent.fetchAccounts(
      {required String cusId, String? sDate, String? eDate}) = FetchAccounts;
  const factory AccountsEvent.outStandingCreditOpngClsg(
      {required String cusid,
      String? sDate,
      String? eDate}) = OutStandingCreditOpngClsg;
  const factory AccountsEvent.openingBal(
      {required String cusid, String? sDate, String? eDate}) = OpeningBal;
  const factory AccountsEvent.closingBal({
    String? eDate,
    required String cusid,
  }) = ClosingBal;
}
