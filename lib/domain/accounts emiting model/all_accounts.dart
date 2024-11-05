// To parse this JSON data, do

// final allAccountModel = allAccountModelFromJson(jsonString);

import 'dart:convert';

List<AllAccountModel> fromJson(String str) => List<AllAccountModel>.from(
    json.decode(str).map((x) => AllAccountModel.fromJson(x)));

class AllAccountModel {
  String? date;
  double? amt;
  String? type;
  String? invNo;
  String? decs;
  String? payOrExpId;

  AllAccountModel({
    this.date,
    this.amt,
    this.type,
    this.invNo,
    this.decs,
    this.payOrExpId,
  });

  factory AllAccountModel.fromJson(Map<String, dynamic> json) {
    return AllAccountModel(
      date: json["date"],
      amt: json["amt"],
      type: json["type"],
      decs: json["decs"],
      invNo: json["invNo"],
      payOrExpId: json["PayOrExpID"],
    );
  }
}

// import 'dart:convert';

// List<AllAccountModel> allPayorEXOpeningFromJson(String str) =>
//     List<AllAccountModel>.from(
//         json.decode(str).map((x) => AllAccountModel.fromPayorEXOpeningJson(x)));
// List<AllAccountModel> allPayorEXModelFromJson(String str) =>
//     List<AllAccountModel>.from(
//         json.decode(str).map((x) => AllAccountModel.fromPayorEXJson(x)));

// List<AllAccountModel> salesReturnModelFromJson(String str) =>
//     List<AllAccountModel>.from(
//         json.decode(str).map((x) => AllAccountModel.fromSaleReturnJson(x)));
// List<AllAccountModel> purchaseReturnModelFromJson(String str) =>
//     List<AllAccountModel>.from(
//         json.decode(str).map((x) => AllAccountModel.fromPurchaseReturnJson(x)));
// List<AllAccountModel> saleModelFromJson(String str) =>
//     List<AllAccountModel>.from(
//         json.decode(str).map((x) => AllAccountModel.fromSaleJson(x)));
// List<AllAccountModel> purchaseModelFromJson(String str) =>
//     List<AllAccountModel>.from(
//         json.decode(str).map((x) => AllAccountModel.fromPurchaseJson(x)));

// class AllAccountModel {
//   String? date;
//   double? amt;
//   String? type;
//   String? decs;
//   String? invNo;
//   String? payOrExpID;

//   AllAccountModel(
//       {this.date, this.amt, this.type, this.decs, this.invNo, this.payOrExpID});

//   factory AllAccountModel.fromPurchaseJson(Map<String, dynamic> json) {
//     return AllAccountModel(
//         date: json["Invoicedate"],
//         amt: json["TotalHavetoPayamount"],
//         type: 'Cr',
//         decs: 'Purchase',
//         invNo: '',
//         payOrExpID: '');
//   }
//   factory AllAccountModel.fromSaleJson(Map<String, dynamic> json) {
//     return AllAccountModel(
//         date: json["Invoicedate"],
//         amt: json["TotalHavetoPayamount"],
//         type: 'Dr',
//         decs: 'Sales',
//         invNo: '',
//         payOrExpID: '');
//   }
//   factory AllAccountModel.fromPurchaseReturnJson(Map<String, dynamic> json) {
//     return AllAccountModel(
//         date: json["Invoicedate"],
//         amt: json["TotalHavetoPayamount"],
//         type: 'Dr',
//         decs: 'Purchase Return',
//         invNo: '',
//         payOrExpID: '');
//   }
//   factory AllAccountModel.fromSaleReturnJson(Map<String, dynamic> json) {
//     return AllAccountModel(
//         date: json["Invoicedate"],
//         amt: json["TotalHavetoPayamount"],
//         type: 'Cr',
//         decs: 'Sales Return',
//         invNo: '',
//         payOrExpID: '');
//   }
//   factory AllAccountModel.fromPayorEXOpeningJson(Map<String, dynamic> json) {
//     return AllAccountModel(
//         date: json["Date"],
//         amt: json["Amount"],
//         type: json["CrORDr"],
//         decs: 'PaymentDR',
//         invNo: '',
//         payOrExpID: '');
//   }
//   factory AllAccountModel.fromPayorEXJson(Map<String, dynamic> json) {
//     return AllAccountModel(
//         date: json["PayOrExpDate"],
//         amt: json["paidamount"],
//         type: json["PayCrDr"],
//         decs: json["RootType"],
//         invNo: json["PayINVid"],
//         payOrExpID: json["PayOrExpID"]);
//   }
// }
