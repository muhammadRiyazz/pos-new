// To parse this JSON data, do
//
//     final catagory = catagoryFromJson(jsonString);

import 'dart:convert';

List<Catagory> catagoryFromJson(String str) =>
    List<Catagory>.from(json.decode(str).map((x) => Catagory.fromJson(x)));

String catagoryToJson(List<Catagory> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Catagory {
  int id;
  String? pdtfilter;

  Catagory({
    required this.id,
    required this.pdtfilter,
  });

  factory Catagory.fromJson(Map<String, dynamic> json) => Catagory(
        id: json["Id"],
        pdtfilter: json["pdtfilter"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "pdtfilter": pdtfilter,
      };
}
