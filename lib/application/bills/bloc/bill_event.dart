part of 'bill_bloc.dart';

@freezed
class BillEvent with _$BillEvent {
  const factory BillEvent.fetchBills() = FetchBill;
  const factory BillEvent.fetchReturnBills() = FetchReturnBill;
  const factory BillEvent.clearingSort() = ClearingSort;
  const factory BillEvent.removeCus() = RemoveCus;
  const factory BillEvent.searchBill(
      {required String query,
      required List<ViewBillModel> searchList}) = SearchBill;
  const factory BillEvent.fetchBillProducts({required String invoiceNo}) =
      FetchBillProducts;
  const factory BillEvent.sortBills(
      {String? cusId,
      String? cusname,
      DateTime? sDate,
      DateTime? eDate}) = SortBills;
     
      const factory BillEvent.billprint({required ViewBillModel data,required bool isSunmi}) = BillPrintt;

}
