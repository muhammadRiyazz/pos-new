import 'dart:convert';
import 'dart:developer';

double getTotalAmountForCustomerId(String response, String customerId) {
  double totalAmount = 0.0;

  List<Map<String, dynamic>> responseData = (json.decode(response) as List)
      .map((item) => item as Map<String, dynamic>)
      .toList();

  for (var item in responseData) {
    if (item['cusid'] == customerId) {
      log('total amt in invo' + totalAmount.toString());
      totalAmount += item['TotalHavetoPayamount'];
    }
  }

  return totalAmount;
}

Map<String, double> calculatePayorEX(String response, String customerID) {
  double totalCreditAmount = 0;
  double totalDebitAmount = 0;
  List<Map<String, dynamic>> responseData = (json.decode(response) as List)
      .map((item) => item as Map<String, dynamic>)
      .toList();

  for (var item in responseData) {
    if (item['VendIDOreCusID'] == customerID) {
      if (item['PayCrDr'] == "Cr") {
        totalCreditAmount += item['paidamount'];
      } else if (item['PayCrDr'] == "Dr") {
        totalDebitAmount += item['paidamount'];
      }
    }
  }

  return {
    'creditAmount': totalCreditAmount,
    'debitAmount': totalDebitAmount,
  };
}

Map<String, double> calculatePayorEXopening(
    String response, String customerID) {
  double totalCreditAmount = 0;
  double totalDebitAmount = 0;
  List<Map<String, dynamic>> responseData = (json.decode(response) as List)
      .map((item) => item as Map<String, dynamic>)
      .toList();

  for (var item in responseData) {
    if (item['cusid'] == customerID) {
      if (item['CrORDr'] == "Cr") {
        totalCreditAmount += item['Amount'];
      } else if (item['CrORDr'] == "Dr") {
        totalDebitAmount += item['Amount'];
      }
    }
  }

  return {
    'creditAmount': totalCreditAmount,
    'debitAmount': totalDebitAmount,
  };
}

Map<String, double> calculatePayorEXopeningForAccounts(
    String response, String customerID) {
  double totalCreditAmount = 0;
  double totalDebitAmount = 0;
  List<Map<String, dynamic>> responseData = (json.decode(response) as List)
      .map((item) => item as Map<String, dynamic>)
      .toList();

  for (var item in responseData) {
    if (item['CusId'] == customerID) {
      if (item['CrORDr'] == "Cr") {
        log('CR   CR   CR   CR   CR   CR   CR   CR   ');
        totalCreditAmount += item['Amount'];
      } else if (item['CrORDr'] == "Dr") {
        totalDebitAmount += item['Amount'];
      }
    }
  }

  return {
    'creditAmount': totalCreditAmount,
    'debitAmount': totalDebitAmount,
  };
}

double getTotalAmountForCustomerIdd(List<Map<String, dynamic>> responseData, String column) {
  double totalAmount = 0.0;
  for (var item in responseData) {
    totalAmount += item[column] ?? 0.0;
  }
  return totalAmount;
}

Map<String, double> calculateAmounts(List<Map<String, dynamic>> responseData, String customerId, String idColumn, String crDrColumn, String amountColumn) {
  double totalCreditAmount = 0;
  double totalDebitAmount = 0;
  for (var item in responseData) {
    if (item[idColumn] == customerId) {
      if (item[crDrColumn] == "Cr") {
        totalCreditAmount += item[amountColumn];
      } else if (item[crDrColumn] == "Dr") {
        totalDebitAmount += item[amountColumn];
      }
    }
  }
  return {
    'creditAmount': totalCreditAmount,
    'debitAmount': totalDebitAmount,
  };
}