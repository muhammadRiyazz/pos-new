// To parse this JSON data, do
//
//     final invoiceDetail = invoiceDetailFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

List<InvoiceDetail> invoiceDetailFromJson(String str) =>
    List<InvoiceDetail>.from(
        json.decode(str).map((x) => InvoiceDetail.fromJson(x)));

String invoiceDetailToJson(List<InvoiceDetail> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class InvoiceDetail {
  int id;
  String hsncode;
    double gst;


  String invoiceno;
  String? pdtname;
  double? qty;
  double? unitprice;
  double? itemMRP;
  double? gstamount;
  String? pdtcode;
  double? ItemUnitSaleRate;
  double? CessAmount;
  double? CessPercentage;

  InvoiceDetail({
    required this.CessAmount,
    required this.CessPercentage,
    required this.id,
        required this.gst,

    required this.gstamount,
    required this.hsncode,
    required this.invoiceno,
    this.pdtname,
    this.qty,
    this.unitprice,
    this.pdtcode,
    this.ItemUnitSaleRate,
    this.itemMRP,
  });

  factory InvoiceDetail.fromJson(Map<String, dynamic> json) => InvoiceDetail(
        CessPercentage: json["CessPercentage"],
        CessAmount: json["CessAmount"],
        hsncode: json["HSNCode"],
        gstamount: json["gstamount"],
        id: json["Id"],gst: json["gst"],
        itemMRP: json["itemMRP"],
        invoiceno: json["invoiceno"],
        pdtname: json["pdtname"],
        qty: json["qty"],
        unitprice: json["unitprice"],
        pdtcode: json["pdtcode"],
        ItemUnitSaleRate: json["ItemUnitSaleRate"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "invoiceno": invoiceno,
        "pdtname": pdtname,
        "qty": qty,
        "unitprice": unitprice,
        "pdtcode": pdtcode,
        "ItemUnitSaleRate": ItemUnitSaleRate,
      };
}
