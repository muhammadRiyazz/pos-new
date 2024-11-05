// To parse this JSON data, do
//
//     final customerslist = customerslistFromJson(jsonString);

import 'dart:convert';

List<Customerslist> customerslistFromJson(String str) =>
    List<Customerslist>.from(
        json.decode(str).map((x) => Customerslist.fromJson(x)));

String customerslistToJson(List<Customerslist> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Customerslist {
  String? cusid;

  String bussinessname;
  String bussinessaddr;
  String? contactsmsno;
 
  String? gstno;
  String? state;
  String? email;
  String? number;

  String? district;
  String? customerType;

  Customerslist({
    required this.cusid,
         this.number,

    required this.bussinessname,
    required this.state,
    required this.email,
    required this.district,
    required this.bussinessaddr,
    required this.contactsmsno,
    required this.gstno,
    required this.customerType,
  });

  factory Customerslist.fromJson(Map<String, dynamic> json) => Customerslist(number: json["CustomerListOrder"] ,
        district: json["note"] ?? 'null',
        email: json["contactemailaddr"] ?? 'null',
        state: json["city"] ?? 'null',
        cusid: json["cusid"] ?? 'null',

        bussinessname: json["bussinessname"] ?? 'null',
        bussinessaddr: json["bussinessaddr"] ?? 'null',
        contactsmsno: json["contactsmsno"] ?? 'null',
        gstno: json["gstno"] ?? 'null',
        customerType: json["CustomerTYPE"] ?? 'null',
      );

  Map<String, dynamic> toJson() => {
        "cusid": cusid,
        "bussinessname": bussinessname,
        "bussinessaddr": bussinessaddr,
        "contactsmsno": contactsmsno,
        "gstno": gstno,
        "CustomerTYPE": customerType,
      };
}
