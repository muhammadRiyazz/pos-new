import 'dart:convert';
import 'dart:developer';

String getLastID(String result) {
  String cusId = '';

  List<dynamic> jsonData = jsonDecode(result);
  String valueInsideBraces = jsonData[0][''].toString();
  if (valueInsideBraces != 'null') {
    cusId = 'CUS${int.parse(valueInsideBraces) + 1}';
  } else {
    cusId = 'CUS1';
  }
  log(cusId);
  return cusId;
}