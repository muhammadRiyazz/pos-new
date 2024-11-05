// To parse this JSON data, do
//
//     final accountsModel = accountsModelFromJson(jsonString);

import 'dart:convert';

List<AccountsModel> accountsModelFromJson(String str) =>
    List<AccountsModel>.from(
        json.decode(str).map((x) => AccountsModel.fromJson(x)));

String accountsModelToJson(List<AccountsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AccountsModel {
  int? id;
  String? payOrExpId;
  String? vendIdOreCusId;
  String? vendIdOreCusName;
  DateTime? payOrExpDate;
  String? cat;
  String? reff;
  String? paidby;
  String? description;
  double? totalamount;
  double? totalpaidamount;
  double? amount;
  double? totaltaxamount;
  String? openingbalance;
  double? paidamount;
  String? payCrDr;
  String? payInVid;
  String? rootType;
  String? userId;

  AccountsModel({
    this.id,
    this.payOrExpId,
    this.vendIdOreCusId,
    this.vendIdOreCusName,
    this.payOrExpDate,
    this.cat,
    this.reff,
    this.paidby,
    this.description,
    this.totalamount,
    this.totalpaidamount,
    this.amount,
    this.totaltaxamount,
    this.openingbalance,
    this.paidamount,
    this.payCrDr,
    this.payInVid,
    this.rootType,
    this.userId,
  });

  factory AccountsModel.fromJson(Map<String, dynamic> json) => AccountsModel(
        id: json["Id"],
        payOrExpId: json["PayOrExpID"],
        vendIdOreCusId: json["VendIDOreCusID"],
        vendIdOreCusName: json["VendIDOreCusName"],
        payOrExpDate: json["PayOrExpDate"] == null
            ? null
            : DateTime.parse(json["PayOrExpDate"]),
        cat: json["CAT"],
        reff: json["Reff"],
        paidby: json["paidby"],
        description: json["description"],
        totalamount: json["totalamount"],
        totalpaidamount: json["totalpaidamount"],
        amount: json["Amount"],
        totaltaxamount: json["totaltaxamount"],
        openingbalance: json["openingbalance"],
        paidamount: json["paidamount"],
        payCrDr: json["PayCrDr"],
        payInVid: json["PayINVid"],
        rootType: json["RootType"],
        userId: json["UserID"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "PayOrExpID": payOrExpId,
        "VendIDOreCusID": vendIdOreCusId,
        "VendIDOreCusName": vendIdOreCusName,
        "PayOrExpDate":
            "${payOrExpDate!.year.toString().padLeft(4, '0')}-${payOrExpDate!.month.toString().padLeft(2, '0')}-${payOrExpDate!.day.toString().padLeft(2, '0')}",
        "CAT": cat,
        "Reff": reff,
        "paidby": paidby,
        "description": description,
        "totalamount": totalamount,
        "totalpaidamount": totalpaidamount,
        "Amount": amount,
        "totaltaxamount": totaltaxamount,
        "openingbalance": openingbalance,
        "paidamount": paidamount,
        "PayCrDr": payCrDr,
        "PayINVid": payInVid,
        "RootType": rootType,
        "UserID": userId,
      };
}

// To parse this JSON data, do
//
//     final accountsInsertModel = accountsInsertModelFromJson(jsonString);

AccountsInsertModel accountsInsertModelFromJson(String str) =>
    AccountsInsertModel.fromJson(json.decode(str));

String accountsInsertModelToJson(AccountsInsertModel data) =>
    json.encode(data.toJson());

class AccountsInsertModel {
  int? id;
  String? payOrExpId;
    String? outstaingtype;
    double? outstaing;

  String? vendIdOreCusId;
  String? vendIdOreCusName;
  DateTime? payOrExpDate;
  String? cat;
  String? reff;
  String? paidby;
  String? description;
  double? totalamount;
  double? totalpaidamount;
  double? amount;
  double? totaltaxamount;
  String? openingbalance;
  double? paidamount;
  String? payCrDr;
  String? payInVid;
  String? rootType;
  String? userId;

  AccountsInsertModel({
        this.outstaing,
    this.outstaingtype,
    this.id,
    this.payOrExpId,
    this.vendIdOreCusId,
    this.vendIdOreCusName,
    this.payOrExpDate,
    this.cat,
    this.reff,
    this.paidby,
    this.description,
    this.totalamount,
    this.totalpaidamount,
    this.amount,
    this.totaltaxamount,
    this.openingbalance,
    this.paidamount,
    this.payCrDr,
    this.payInVid,
    this.rootType,
    this.userId,
  });

  factory AccountsInsertModel.fromJson(Map<String, dynamic> json) =>
      AccountsInsertModel(
        id: json["Id"],
        payOrExpId: json["PayOrExpID"],
        vendIdOreCusId: json["VendIDOreCusID"],
        vendIdOreCusName: json["VendIDOreCusName"],
        payOrExpDate: json["PayOrExpDate"] == null
            ? null
            : DateTime.parse(json["PayOrExpDate"]),
        cat: json["CAT"],
        reff: json["Reff"],
        paidby: json["paidby"],
        description: json["description"],
        totalamount: json["totalamount"],
        totalpaidamount: json["totalpaidamount"],
        amount: json["Amount"],
        totaltaxamount: json["totaltaxamount"],
        openingbalance: json["openingbalance"],
        paidamount: json["paidamount"],
        payCrDr: json["PayCrDr"],
        payInVid: json["PayINVid"],
        rootType: json["RootType"],
        userId: json["UserID"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "PayOrExpID": payOrExpId,
        "VendIDOreCusID": vendIdOreCusId,
        "VendIDOreCusName": vendIdOreCusName,
        "PayOrExpDate":
            "${payOrExpDate!.year.toString().padLeft(4, '0')}-${payOrExpDate!.month.toString().padLeft(2, '0')}-${payOrExpDate!.day.toString().padLeft(2, '0')}",
        "CAT": cat,
        "Reff": reff,
        "paidby": paidby,
        "description": description,
        "totalamount": totalamount,
        "totalpaidamount": totalpaidamount,
        "Amount": amount,
        "totaltaxamount": totaltaxamount,
        "openingbalance": openingbalance,
        "paidamount": paidamount,
        "PayCrDr": payCrDr,
        "PayINVid": payInVid,
        "RootType": rootType,
        "UserID": userId,
      };
}
