part of 'submitbill_bloc.dart';

@freezed
class SubmitbillEvent with _$SubmitbillEvent {
  const factory SubmitbillEvent.listing({
    required List<Stocklist> list,
  }) = Listing;
  const factory SubmitbillEvent.removeItem(
      {required int itemIndex,
      required List<InvoiceData> invoicelist,
      required BuildContext context}) = RemoveItem;
  const factory SubmitbillEvent.outstandingCredit({required String cusid}) =
      OutstandingCredit;
  const factory SubmitbillEvent.adddiscount({
    required double dicountamt,
    required List<Stocklist> selectedstocklist,
  }) = AddDiscount;


  const factory SubmitbillEvent.submitBill(
      {required Customerslist customers,
      required double paymentamt,

      required String paymentType,
      required BuildContext ctx}) = SubmitBill;




  const factory SubmitbillEvent.submitretunBill(
      {required Customerslist customers,
      required BuildContext ctx}) = SubmitretunBill;
  const factory SubmitbillEvent.estimatesubmite(
      {required Customerslist customers,
      required BuildContext ctx}) = Estimatesubmite;
  const factory SubmitbillEvent.printbill(
      {required Customerslist customers,
      required String paidAmt,
      required int from,
      required bool isSunmi}) = Printbill;
}
