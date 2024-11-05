// To parse this JSON data, do
//
//     final reportmodel = reportmodelFromJson(jsonString);

import 'dart:convert';

List<Reportmodel> reportmodelFromJson(String str) => List<Reportmodel>.from(json.decode(str).map((x) => Reportmodel.fromJson(x)));

String reportmodelToJson(List<Reportmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Reportmodel {
    int id;
    String cusname;
    String custominvno;
    String invoicedate;
    double totalHavetoPayamount;

    Reportmodel({
      required this.invoicedate,
        required this.id,
        required this.cusname,
        required this.custominvno,
        required this.totalHavetoPayamount,
    });

    factory Reportmodel.fromJson(Map<String, dynamic> json) => Reportmodel(invoicedate: json["Invoicedate"] ,
        id: json["Id"],
        cusname: json["cusname"],
        custominvno: json["custominvno"],
        totalHavetoPayamount: json["TotalHavetoPayamount"],
    );

    Map<String, dynamic> toJson() => {
        "Id": id,
        "cusname": cusname,
        "custominvno": custominvno,
        "TotalHavetoPayamount": totalHavetoPayamount,
    };
}
