// To parse this JSON data, do
//
//     final rootmodel = rootmodelFromJson(jsonString);

import 'dart:convert';

List<RemartData> rootmodelFromJson(String str) => List<RemartData>.from(json.decode(str).map((x) => RemartData.fromJson(x)));

String rootmodelToJson(List<RemartData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RemartData {
    String remark;
    int id;

    RemartData({
        required this.remark,
        required this.id,
    });

    factory RemartData.fromJson(Map<String, dynamic> json) => RemartData(
        remark: json["Remark"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "Remark": remark,
        "id": id,
    };
}
