import 'dart:convert';

List<Stocklist> stocklistFromJson(String str) =>
    List<Stocklist>.from(json.decode(str).map((x) => Stocklist.fromJson(x)));

String stocklistToJson(List<Stocklist> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Stocklist {
  int id;
  int count = 0;
  String codeorSku;
  String category;
  String pdtname;
  String hsnCode;
    String? returneReasone;
    double? vanstock;

  // String description;
  // int puramnt;
  // int puramntwithtax;
  double saleamnt;
  double saleamntwithtax;
  // int profit;
  // int pcs;
  String tax;
  double saletaxamnt;
  // String stockcontrol;
  // int totalstock;
  // int lowstock;
  // String warehouse;
  // String vendername;
  // String venderinvoice;
  // String vendercontactname;
  // int vendertax;
  // int purtaxamnt;
  // String venderimg;
  // int vendertotalamnt;
  // int vendertotaltaxamnt;
  // String privatenote;
  // dynamic date;
  // String productimg;
  // String status;
  // String lossorgain;
  // String vendorid;
  dynamic hsncode1;
  // int venIgst;
  // int venIgsTamnt;
  // int venCgst;
  // int venCgsTamnt;
  // int venSgst;
  // int venSgsTamnt;
  // String seRorGoods;
  String itemMrp;
  // String saleincluORexclussive;
  // String purchaseincluORexclussive;
  // dynamic initialCost;
  // int avgCost;
  // String messurmentsUnit;
  // String sincluorExclu;
  // String pincluorExclu;
  // String barcodeId;
  // String supplierName;
  // String cessBasedonQntyorValue;
  String cessRate;
  // String catType;
  // String catBrand;
  // String catModelNo;
  // String catColor;
  // String catSize;
  // String catPartNumber;
  // String catSerialNumber;
  // String aliasNameId;
  // String initialQuantity;
  String pCatType;
  // String brandType;
  // String rePackingApplicable;
  // String repackingTo;
  // String repackingBalance;
  // String bulkItemQty;
  // String balanceRepackingitemUnit;
  // String repackingitemUnit;
  // String repackingItemOf;

  Stocklist({
    required this.id,
this.returneReasone,
this.vanstock,

    required this.codeorSku,
    required this.category,
    required this.pdtname,
    required this.hsnCode,
    // required this.description,
    // required this.puramnt,
    // required this.puramntwithtax,
    required this.saleamnt,
    required this.saleamntwithtax,
    // required this.profit,
    // required this.pcs,
    required this.tax,
    required this.saletaxamnt,
    // required this.stockcontrol,
    // required this.totalstock,
    // required this.lowstock,
    // required this.warehouse,
    // required this.vendername,
    // required this.venderinvoice,
    // required this.vendercontactname,
    // required this.vendertax,
    // required this.purtaxamnt,
    // required this.venderimg,
    // required this.vendertotalamnt,
    // required this.vendertotaltaxamnt,
    // required this.privatenote,
    // required this.date,
    // required this.productimg,
    // required this.status,
    // required this.lossorgain,
    // required this.vendorid,
    required this.hsncode1,
    // required this.venIgst,
    // required this.venIgsTamnt,
    // required this.venCgst,
    // required this.venCgsTamnt,
    // required this.venSgst,
    // required this.venSgsTamnt,
    // required this.seRorGoods,
    required this.itemMrp,
    // required this.saleincluORexclussive,
    // required this.purchaseincluORexclussive,
    // required this.initialCost,
    // required this.avgCost,
    // required this.messurmentsUnit,
    // required this.sincluorExclu,
    // required this.pincluorExclu,
    // required this.barcodeId,
    // required this.supplierName,
    // required this.cessBasedonQntyorValue,
    required this.cessRate,
    // required this.catType,
    // required this.catBrand,
    // required this.catModelNo,
    // required this.catColor,
    // required this.catSize,
    // required this.catPartNumber,
    // required this.catSerialNumber,
    // required this.aliasNameId,
    // required this.initialQuantity,
    required this.pCatType,
    // required this.brandType,
    // required this.rePackingApplicable,
    // required this.repackingTo,
    // required this.repackingBalance,
    // required this.bulkItemQty,
    // required this.balanceRepackingitemUnit,
    // required this.repackingitemUnit,
    // required this.repackingItemOf,
  });

  factory Stocklist.fromJson(Map<String, dynamic> json) => Stocklist(
        id: json["Id"],

        codeorSku: json["codeorSKU"],
        category: json["category"],
        pdtname: json["pdtname"],
        hsnCode: json["HSNCode"],
        // description: json["description"],
        // puramnt: json["puramnt"],
        // puramntwithtax: json["puramntwithtax"],
        saleamnt: json["saleamnt"],
        saleamntwithtax: json["saleamntwithtax"],
        // profit: json["profit"],
        // pcs: json["pcs"],
        tax: json["tax"],
        saletaxamnt: json["saletaxamnt"],
        // stockcontrol: json["stockcontrol"],
        // totalstock: json["totalstock"],
        // lowstock: json["lowstock"],
        // warehouse: json["warehouse"],
        // vendername: json["vendername"],
        // venderinvoice: json["venderinvoice"],
        // vendercontactname: json["vendercontactname"],
        // vendertax: json["vendertax"],
        // purtaxamnt: json["purtaxamnt"],
        // venderimg: json["venderimg"],
        // vendertotalamnt: json["vendertotalamnt"],
        // vendertotaltaxamnt: json["vendertotaltaxamnt"],
        // privatenote: json["privatenote"],
        // date: json["Date"],
        // productimg: json["productimg"],
        // status: json["status"],
        // lossorgain: json["lossorgain"],
        // vendorid: json["vendorid"],
        hsncode1: json["hsncode1"],
        // venIgst: json["venIGST"],
        // venIgsTamnt: json["venIGSTamnt"],
        // venCgst: json["venCGST"],
        // venCgsTamnt: json["venCGSTamnt"],
        // venSgst: json["venSGST"],
        // venSgsTamnt: json["venSGSTamnt"],
        // seRorGoods: json["SERorGOODS"],
        itemMrp: json["itemMRP"],
        // saleincluORexclussive: json["SaleincluORexclussive"],
        // purchaseincluORexclussive: json["PurchaseincluORexclussive"],
        // initialCost: json["InitialCost"],
        // avgCost: json["AvgCost"],
        // messurmentsUnit: json["MessurmentsUnit"],
        // sincluorExclu: json["SincluorExclu"],
        // pincluorExclu: json["PincluorExclu"],
        // barcodeId: json["BarcodeID"],
        // supplierName: json["SupplierName"],
        // cessBasedonQntyorValue: json["CessBasedonQntyorValue"],
        cessRate: json["CessRate"],
        // catType: json["CatType"],
        // catBrand: json["CatBrand"],
        // catModelNo: json["CatModelNo"],
        // catColor: json["CatColor"],
        // catSize: json["CatSize"],
        // catPartNumber: json["CatPartNumber"],
        // catSerialNumber: json["CatSerialNumber"],
        // aliasNameId: json["AliasNameID"],
        // initialQuantity: json["InitialQuantity"],
        pCatType: json["PCatType"],
        // brandType: json["BrandType"],
        // rePackingApplicable: json["RePackingApplicable"],
        // repackingTo: json["RepackingTo"],
        // repackingBalance: json["RepackingBalance"],
        // bulkItemQty: json["BulkItemQty"],
        // balanceRepackingitemUnit: json["BalanceRepackingitemUnit"],
        // repackingitemUnit: json["RepackingitemUnit"],
        // repackingItemOf: json["RepackingItemOf"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "codeorSKU": codeorSku,
        "category": category,
        "pdtname": pdtname,
        "HSNCode": hsnCode,
        // "description": description,
        // "puramnt": puramnt,
        // "puramntwithtax": puramntwithtax,
        "saleamnt": saleamnt,
        "saleamntwithtax": saleamntwithtax,
        // "profit": profit,
        // "pcs": pcs,
        "tax": tax,
        "saletaxamnt": saletaxamnt,
        // "stockcontrol": stockcontrol,
        // "totalstock": totalstock,
        // "lowstock": lowstock,
        // "warehouse": warehouse,
        // "vendername": vendername,
        // "venderinvoice": venderinvoice,
        // "vendercontactname": vendercontactname,
        // "vendertax": vendertax,
        // "purtaxamnt": purtaxamnt,
        // "venderimg": venderimg,
        // "vendertotalamnt": vendertotalamnt,
        // "vendertotaltaxamnt": vendertotaltaxamnt,
        // "privatenote": privatenote,
        // "Date": date,
        // "productimg": productimg,
        // "status": status,
        // "lossorgain": lossorgain,
        // "vendorid": vendorid,
        "hsncode1": hsncode1,
        // "venIGST": venIgst,
        // "venIGSTamnt": venIgsTamnt,
        // "venCGST": venCgst,
        // "venCGSTamnt": venCgsTamnt,
        // "venSGST": venSgst,
        // "venSGSTamnt": venSgsTamnt,
        // "SERorGOODS": seRorGoods,
        "itemMRP": itemMrp,
        // "SaleincluORexclussive": saleincluORexclussive,
        // "PurchaseincluORexclussive": purchaseincluORexclussive,
        // "InitialCost": initialCost,
        // "AvgCost": avgCost,
        // "MessurmentsUnit": messurmentsUnit,
        // "SincluorExclu": sincluorExclu,
        // "PincluorExclu": pincluorExclu,
        // "BarcodeID": barcodeId,
        // "SupplierName": supplierName,
        // "CessBasedonQntyorValue": cessBasedonQntyorValue,
        "CessRate": cessRate,
        // "CatType": catType,
        // "CatBrand": catBrand,
        // "CatModelNo": catModelNo,
        // "CatColor": catColor,
        // "CatSize": catSize,
        // "CatPartNumber": catPartNumber,
        // "CatSerialNumber": catSerialNumber,
        // "AliasNameID": aliasNameId,
        // "InitialQuantity": initialQuantity,
        "PCatType": pCatType,
        // "BrandType": brandType,
        // "RePackingApplicable": rePackingApplicable,
        // "RepackingTo": repackingTo,
        // "RepackingBalance": repackingBalance,
        // "BulkItemQty": bulkItemQty,
        // "BalanceRepackingitemUnit": balanceRepackingitemUnit,
        // "RepackingitemUnit": repackingitemUnit,
        // "RepackingItemOf": repackingItemOf,
      };
}
