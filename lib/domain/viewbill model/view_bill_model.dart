// To parse this JSON data, do
//
//     final viewBillModel = viewBillModelFromJson(jsonString);

import 'dart:convert';

List<ViewBillModel> viewBillModelFromJson(String str) =>
    List<ViewBillModel>.from(
        json.decode(str).map((x) => ViewBillModel.fromJson(x)));

String viewBillModelToJson(List<ViewBillModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ViewBillModel {
  int id;
  String? cusid;
  String? cusname;
  String? cusnameAddress;
  String? custorcontact;
  String? cusnameGstNumber;
  String? custominvno;
  DateTime? invoicedate;
  String? description;
  double? totalamount;
  double? totaltaxamount;
  double? discountamount;
  double? extraamount;
  double? totalHavetoPayamount;
  double? totalpaidamount;
  String? paidby;
  double? balance;
  String? status;
  String? dueDate;
  String? emailOn;
  String? printedOn;
  String? smsOn;
  String? inVorEsTorOrd;
  String? inVdiscPercen;
  String? customerType;
  String? creditOrCleared;
  String? inVtype;
  String? inVtypeState;
  String? shipmenttoAddName;
  String? shipmenttoAddress;
  String? cancelledorNot;
  String? salesManId;
  String? kotNo;
  String? kotNoCLorNot;
  String? waiterId;
  String? tableNumber;
  String? posbill;
  double? itemDiscTotal;
  double? subTotal;
  double? billDiscPer;
  double? billDiscTotal;
  double? inVnetAmount;
  double? inVtotalTaxAmnt;
  String? customerVehicleNum;
  double? taxableValues;
  double? totalCessAmount;
  String? branchName;
  String? userId;

  ViewBillModel({
    required this.id,
    this.cusid,
    this.cusname,
    this.cusnameAddress,
    this.custorcontact,
    this.cusnameGstNumber,
    this.custominvno,
    this.invoicedate,
    this.description,
    this.totalamount,
    this.totaltaxamount,
    this.discountamount,
    this.extraamount,
    this.totalHavetoPayamount,
    this.totalpaidamount,
    this.paidby,
    this.balance,
    this.status,
    this.dueDate,
    this.emailOn,
    this.printedOn,
    this.smsOn,
    this.inVorEsTorOrd,
    this.inVdiscPercen,
    this.customerType,
    this.creditOrCleared,
    this.inVtype,
    this.inVtypeState,
    this.shipmenttoAddName,
    this.shipmenttoAddress,
    this.cancelledorNot,
    this.salesManId,
    this.kotNo,
    this.kotNoCLorNot,
    this.waiterId,
    this.tableNumber,
    this.posbill,
    this.itemDiscTotal,
    this.subTotal,
    this.billDiscPer,
    this.billDiscTotal,
    this.inVnetAmount,
    this.inVtotalTaxAmnt,
    this.customerVehicleNum,
    this.taxableValues,
    this.totalCessAmount,
    this.branchName,
    this.userId,
  });

  factory ViewBillModel.fromJson(Map<String, dynamic> json) => ViewBillModel(
        id: json["Id"]??'',
        cusid: json["cusid"],
        cusname: json["cusname"]??'',
        cusnameAddress: json["cusnameAddress"],
        custorcontact: json["custorcontact"],
        cusnameGstNumber: json["cusnameGSTNumber"],
        custominvno: json["custominvno"],
        invoicedate: DateTime.parse(json["Invoicedate"]),
        description: json["description"],
        totalamount: json["totalamount"],
        totaltaxamount: json["totaltaxamount"],
        discountamount: json["Discountamount"],
        extraamount: json["extraamount"],
        totalHavetoPayamount: json["TotalHavetoPayamount"]??'',
        totalpaidamount: json["totalpaidamount"],
        paidby: json["paidby"],
        balance: json["balance"],
        status: json["status"],
        dueDate: json["DueDate"],
        emailOn: json["EmailOn"],
        printedOn: json["PrintedOn"],
        smsOn: json["SMSOn"],
        inVorEsTorOrd: json["INVorESTorORD"],
        inVdiscPercen: json["INVdiscPERCEN"],
        customerType: json["CustomerTYPE"],
        creditOrCleared: json["CreditOrCleared"],
        inVtype: json["INVtype"],
        inVtypeState: json["INVtypeState"],
        shipmenttoAddName: json["ShipmenttoAddName"],
        shipmenttoAddress: json["ShipmenttoAddress"],
        cancelledorNot: json["cancelledorNOT"],
        salesManId: json["SalesManID"],
        kotNo: json["KOTNo"],
        kotNoCLorNot: json["KOTNoCLorNOT"],
        waiterId: json["WaiterID"],
        tableNumber: json["TableNumber"],
        posbill: json["POSBILL"],
        itemDiscTotal: json["ItemDiscTotal"],
        subTotal: json["SubTotal"],
        billDiscPer: json["BillDiscPER"],
        billDiscTotal: json["BillDiscTotal"],
        inVnetAmount: json["INVnetAmount"],
        inVtotalTaxAmnt: json["INVtotalTAXAmnt"],
        customerVehicleNum: json["CustomerVehicleNum"],
        taxableValues: json["TaxableValues"],
        totalCessAmount: json["TotalCessAmount"],
        branchName: json["BranchName"],
        userId: json["UserID"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "cusid": cusid,
        "cusname": cusname,
        "cusnameAddress": cusnameAddress,
        "custorcontact": custorcontact,
        "cusnameGSTNumber": cusnameGstNumber,
        "custominvno": custominvno,
        "Invoicedate": invoicedate,
        "description": description,
        "totalamount": totalamount,
        "totaltaxamount": totaltaxamount,
        "Discountamount": discountamount,
        "extraamount": extraamount,
        "TotalHavetoPayamount": totalHavetoPayamount,
        "totalpaidamount": totalpaidamount,
        "paidby": paidby,
        "balance": balance,
        "status": status,
        "DueDate": dueDate,
        "EmailOn": emailOn,
        "PrintedOn": printedOn,
        "SMSOn": smsOn,
        "INVorESTorORD": inVorEsTorOrd,
        "INVdiscPERCEN": inVdiscPercen,
        "CustomerTYPE": customerType,
        "CreditOrCleared": creditOrCleared,
        "INVtype": inVtype,
        "INVtypeState": inVtypeState,
        "ShipmenttoAddName": shipmenttoAddName,
        "ShipmenttoAddress": shipmenttoAddress,
        "cancelledorNOT": cancelledorNot,
        "SalesManID": salesManId,
        "KOTNo": kotNo,
        "KOTNoCLorNOT": kotNoCLorNot,
        "WaiterID": waiterId,
        "TableNumber": tableNumber,
        "POSBILL": posbill,
        "ItemDiscTotal": itemDiscTotal,
        "SubTotal": subTotal,
        "BillDiscPER": billDiscPer,
        "BillDiscTotal": billDiscTotal,
        "INVnetAmount": inVnetAmount,
        "INVtotalTAXAmnt": inVtotalTaxAmnt,
        "CustomerVehicleNum": customerVehicleNum,
        "TaxableValues": taxableValues,
        "TotalCessAmount": totalCessAmount,
        "BranchName": branchName,
        "UserID": userId,
      };
}
