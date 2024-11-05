// To parse this JSON data, do
//
//     final profileModel = profileModelFromMap(jsonString);

import 'dart:convert';

List<ProfileModel> profileModelFromMap(String str) => List<ProfileModel>.from(
    json.decode(str).map((x) => ProfileModel.fromMap(x)));

String profileModelToMap(List<ProfileModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class ProfileModel {
  String cmpname;
  String cmpadd;
  String cmpgstno;
  String cmpemail;

  ProfileModel({
    required this.cmpname,
    required this.cmpadd,
    required this.cmpgstno,
    required this.cmpemail,
  });

  factory ProfileModel.fromMap(Map<String, dynamic> json) => ProfileModel(
        cmpname: json["cmpname"],
        cmpadd: json["cmpadd"],
        cmpgstno: json["cmpgstno"],
        cmpemail: json["cmpemail"],
      );

  Map<String, dynamic> toMap() => {
        "cmpname": cmpname,
        "cmpadd": cmpadd,
        "cmpgstno": cmpgstno,
        "cmpemail": cmpemail,
      };
}
