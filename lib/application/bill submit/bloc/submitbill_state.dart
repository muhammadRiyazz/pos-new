part of 'submitbill_bloc.dart';

@freezed
class SubmitbillState with _$SubmitbillState {
  factory SubmitbillState(
      {required bool isLoading,
      required bool isError,
      required List<Stocklist> list,
      required double subtotal,
      required double taxinc,
      required double taxprs,
      required double cessprs,
      required double cessamt,
      required double invoiceTotal,
      required double grossTotal,
      required bool billsubmission,
      required bool saleretunbill,
      required bool printbill,
      required bool trafic,

      required double netamount,
      required double discountprsnd,
      required double totladiscamt,
      required double gstAmounttotal,
      required double gstprsnttotal,
      required String outstaingtype,
      Customerslist? selectedcustomer,
      required List<InvoiceData> previewlist,
      required double outstandingCreditamt}) = _SubmitbillState;
  factory SubmitbillState.initial() {
    return SubmitbillState(printbill: false,trafic: false,
saleretunbill:false,
      billsubmission: false,
      totladiscamt: 0.00,
        previewlist: [],
        isError: false,gstAmounttotal: 0.00,gstprsnttotal: 0.00,
        isLoading: false,
        discountprsnd: 0.00,
        list: [],
grossTotal:0.00,
        cessamt: 0.00,
        cessprs: 0.00,
        taxprs: 0.00,
        outstandingCreditamt: 0.00,
        subtotal: 0.00,
        outstaingtype: '',
        taxinc: 0.00,
        invoiceTotal: 0.00,
        netamount: 0.00);
  }
}
