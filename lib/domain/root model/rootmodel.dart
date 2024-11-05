// To parse this JSON data, do
//
//     final rootmodel = rootmodelFromJson(jsonString);

import 'dart:convert';

List<Rootmodel> rootmodelFromJson(String str) => List<Rootmodel>.from(json.decode(str).map((x) => Rootmodel.fromJson(x)));

String rootmodelToJson(List<Rootmodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Rootmodel {
    String root;

    Rootmodel({
        required this.root,
    });

    factory Rootmodel.fromJson(Map<String, dynamic> json) => Rootmodel(
        root: json["Root"],
    );

    Map<String, dynamic> toJson() => {
        "Root": root,
    };
}
