part of 'report_bloc.dart';

@freezed
class ReportState with _$ReportState {
  factory ReportState(
      {required bool isLoading,
      required bool isTotalLoading,
      required bool isError,
      required double totalSale,
      required double totalSaleReturn,
            required String root,

      required List<Reportmodel> rBillList,
      required List<Reportmodel> rBillReturnList}) = _ReportState;
  factory ReportState.initial() {
    return ReportState(
      totalSale: 0.00,root: '',
      totalSaleReturn: 0.00,
      rBillList: [],
      rBillReturnList: [],
      isError: false,
      isLoading: false,
      isTotalLoading: false,
    );
  }
}
