import 'dart:convert';
import 'dart:developer';

import 'package:p_o_s/domain/billpreview_cal_res.dart';
import 'package:p_o_s/domain/stock/stock_model.dart';

// double calculateTotalTaxSum(List<Stocklist> items) {
//   double sum = 0;

//   log('sum > ' + sum.toString());
//   return sum;
// }`

double calculateTotal(List<Stocklist> items) {
  double sum = 0;
  for (var item in items) {
    // log('sub  > ' + item.saleamntwithtax.toString());
    // log('sub count  > ' + item.count.toString());

    sum = sum + (item.saleamntwithtax * item.count);
  }
  // log('sum > ' + sum.toString());
  return sum;
}

double discountprsnt({
  required double discountAmount,
  required double totalAmount,
}) {
  double presentage = 0;

  presentage = (discountAmount / totalAmount) * 100;
  return presentage;
}

List<InvoiceData> convertToInvoiceDataList(
    List<Stocklist> selclist, double discount) {
  List<InvoiceData> invoiceDataList = [];
  for (var stock in selclist) {
    log('============================================');
    log(stock.count.toString());
    final discountamt =
        ((discount / 100) * (stock.count * stock.saleamntwithtax));
    final totalAmount = (stock.count * stock.saleamntwithtax) - discountamt;
    log(stock.count.toString());
    log(stock.saleamntwithtax.toString());
    log(discount.toString());

    log(totalAmount.toString());

    final tax = (double.parse(stock.cessRate) + double.parse(stock.tax));
    final multiplier = 1 + (tax / 100);
    final netamt = (totalAmount / multiplier);

    final grossValue = discountamt + netamt;
    final amount = grossValue;
    final gstamt = ((double.parse(stock.tax) / 100) * (netamt));
    final cessamt = ((double.parse(stock.cessRate) / 100) * (netamt));

    final unitprice = amount / stock.count;

    InvoiceData invoiceData = InvoiceData(
        hsncode: stock.hsnCode,
        qty: stock.count.toDouble(),
        gstPercent: double.parse(stock.tax),
        itemName: stock.pdtname,
        mrp: double.parse(stock.itemMrp),
        itemCode: stock.codeorSku,
        baseRate: stock.saleamntwithtax,
        cessPercent: double.parse(stock.cessRate),
        totalAmount: totalAmount,
        netAmount: netamt,
        grossValue: grossValue,
        billDiscount: discountamt,
        amount: amount,
        cessAmount: cessamt,
        gstAmount: gstamt,
        saleRate: unitprice);

    invoiceDataList.add(invoiceData);
  }
  List<Map<String, dynamic>> jsonList =
      invoiceDataList.map((stock) => stock.toJson()).toList();

  String jsonString = jsonEncode(jsonList);

  // log('calculation resultttt>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>---- $jsonString');

  return invoiceDataList;
}
