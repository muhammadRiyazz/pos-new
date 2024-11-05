import 'package:p_o_s/domain/customers/customers_list.dart';

class BillItems {
  final String itemName;
  final String hsnCode;
  final double mrp;
  final double salerate;
  final String qty;
  final double itemTotal;
  final double gstCessAmt;
  final String gstPercentage;
  final String cessPercentage;

  BillItems({
    required this.itemName,
    required this.gstPercentage,
    required this.cessPercentage,
    required this.hsnCode,
    required this.mrp,
    required this.salerate,
    required this.qty,
    required this.gstCessAmt,
    required this.itemTotal,
  });
}

class PrintBill {
  int from;
  List<BillItems> billItems;
  Customerslist customer;
  String cusOutstanding;
  bool isOutstandingDebit;
  String discount;
  String totalQty;
  String invNo;
  String gstCesstotal;
  String billTotal;
  String paidAmt;
  String allItemTotal;
  bool isFromBillView;
  String status;

  PrintBill(
      {required this.billItems,
      required this.invNo,
            required this.from,

      required this.status,
      required this.isFromBillView,
      required this.allItemTotal,
      required this.cusOutstanding,
      required this.totalQty,
      required this.isOutstandingDebit,
      required this.customer,
      required this.discount,
      required this.billTotal,
      required this.gstCesstotal,
      required this.paidAmt});
}
