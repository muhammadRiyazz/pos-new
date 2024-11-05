import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:p_o_s/domain/invoiceDetail/appentydata.dart';

import 'package:p_o_s/domain/customers/customers_list.dart';

String nextinvoiceNo(
    {required String result, required Customerslist selectCustomer})  {
  String invocieNo = '';

  List<dynamic> jsonData = jsonDecode(result);
  String valueInsideBraces = jsonData[0][''].toString();
  if (selectCustomer.customerType == 'BtoB') {
   
    String idcode = appentydataresult[0].invoiceNumberBtoB;

    if (valueInsideBraces != 'null') {
      invocieNo = '$idcode${int.parse(valueInsideBraces) + 1}';
    } else {
      invocieNo = '${idcode}1';
    }
  } else if (selectCustomer.customerType == 'BtoC') {
   
    String idcode = appentydataresult[0].invoiceNumberBtoC;

    if (valueInsideBraces != 'null') {
      invocieNo = '$idcode${int.parse(valueInsideBraces) + 1}';
    } else {
      invocieNo = '${idcode}1';
    }
  }
  log(invocieNo);

  return invocieNo;
}

String nextretuninvoiceNo({
  required String result,
  required Customerslist selectCustomer,
}) {
  log('nextretuninvoiceNo');
  String invocieNo = '';

  List<dynamic> jsonData = jsonDecode(result);
  log('Decoded JSON: $jsonData');

  // Check if jsonData is empty
  if (jsonData.isEmpty) {
      log("Error: Decoded JSON is empty");
      return invocieNo; // Return early if there's no data
  }

  // Access the value using an empty key
  String valueInsideBraces = jsonData[0][''].toString(); // Access using the empty string key
  log(valueInsideBraces);
  
  // Determine idcode based on customer type
  String idcode;
  if (selectCustomer.customerType == 'BtoB') {
    idcode = appentydataresult[0].invoiceReturnNumberBtoB;
  } else if (selectCustomer.customerType == 'BtoC') {
    idcode = appentydataresult[0].invoiceReturnNumberBtoC;
  } else {
    log("Error: Unknown customer type");
    return invocieNo; // Return an empty invoice number for unknown types
  }

  log('---');

  // Generate invoice number
  if (valueInsideBraces != 'null' && valueInsideBraces.isNotEmpty) {
    invocieNo = '$idcode${int.parse(valueInsideBraces) + 1}';
  } else {
    invocieNo = '${idcode}1';
  }

  log("Generated Invoice No: $invocieNo");
  return invocieNo;
}





Future<String> nextESTNo(
    {required String result, required Customerslist selectCustomer}) async {
  String invocieNo = '';

  List<dynamic> jsonData = jsonDecode(result);
  String valueInsideBraces = jsonData[0][''].toString();
  if (selectCustomer.customerType == 'BtoB') {
  

    if (valueInsideBraces != 'null') {
      invocieNo = 'BST${int.parse(valueInsideBraces) + 1}';
    } else {
      invocieNo = 'BST1';
    }
  } else if (selectCustomer.customerType == 'BtoC') {
 

    if (valueInsideBraces != 'null') {
      invocieNo = 'EST${int.parse(valueInsideBraces) + 1}';
    } else {
      invocieNo = 'EST1';
    }
  }
  log(invocieNo);

  return invocieNo;
}