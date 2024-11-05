part of 'bill_bloc.dart';

@freezed
class BillState with _$BillState {
  factory BillState({
    required bool isLoading,
    required bool isError,
       required double paidamount,

    required List<ViewBillModel> bills,
    required List<ViewBillModel> billsReturn,
    required List<InvoiceDetail> billItems,
    DateTime? selectedSdate,
    DateTime? selectedEdate,
    String? selectedCus,
    String? selectedCusId,
  }) = _CustomerpartState;
  factory BillState.initial() {
    return BillState(paidamount: 0.00,
      billItems: [],
      bills: [],
      billsReturn: [],

      isError: false,
      isLoading: false,
    );
  }
}
