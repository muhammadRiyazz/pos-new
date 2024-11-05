// import 'dart:convert';
// import 'dart:developer';

// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:p_o_s/core/server_conn.dart';
// import 'package:p_o_s/domain/stock/stock_model.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// part 'checkout_event.dart';
// part 'checkout_state.dart';
// part 'checkout_bloc.freezed.dart';

// class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
//   CheckoutBloc() : super(CheckoutState.initial()) {
//   on<Checkout>((event, emit) async {
//      emit(state.copyWith(
//         isLoading: true,outodstock: 0
//         ));
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     final logindata = prefs.getString('logindata');
//     Map<String, dynamic> jsonData = json.decode(logindata!);

//     final id = jsonData['username'];

//  // final datetime = DateTime.parse(
//             '${DateTime.now().toString().substring(0, 10)} 00:00:00.000');

//         var formattedDate = DateFormat('dd/MM/yyyy').format(datetime);
//     var formattedDate = '2024-09-06 00:00:00.000';
//     final List<Stocklist> selectedlist = event.selectedstock;
//     final List<Stocklist> outofstocklist = event.selectedstock;

//     for (var element in selectedlist) {
//       String vanopeningq =
//           "SELECT OpeningStock FROM dbo.vanSaleMainItems WHERE ItemCode='${element.codeorSku}' and UserName='$id' and date ='$formattedDate'";
//       String vanopeningrslt = await mssqlConnection!.getData(vanopeningq);
//       log(vanopeningrslt);

//       List<dynamic> jsonResponse = jsonDecode(vanopeningrslt);
//       // Extract the value of "MaxOrder"

//       int vanstock = 0;
//       if (jsonResponse.isEmpty) {
//         log('isempty --opening');
//       } else {
//         int openingstock = 0;
//         int sale = 0;
//         int saleretune = 0;

//         log('notempty');
//         String openingStockj = jsonResponse[0]['OpeningStock'];
//         log(openingStockj);
//         openingstock = int.parse(openingStockj);
//         String saleQtyq =
//             "SELECT Qty FROM dbo.invoicedetail WHERE pdtcode='${element.codeorSku}' and UserID='$id' and invdate ='$formattedDate'";
//         String saleQtyrslt = await mssqlConnection!.getData(saleQtyq);

//         List<dynamic> jsonResponseq = jsonDecode(saleQtyrslt);

//         if (jsonResponseq.isEmpty) {
//           log('isempty  -sale');
//         } else {
//           log('isnotempty  -sale');

//           double totalQty = 0;

//           for (var item in jsonResponseq) {
//             String qty = item['Qty'].toString();
//             totalQty += double.parse(qty); // Sum up the quantities as doubles
//           }

//           log('Total Qty: $totalQty');
//           sale = totalQty.toInt(); // Convert to integer if necessary
//         }

//         String saleretunQtyq =
//             "SELECT Qty FROM dbo.SalesReturnItems WHERE pdtcode='${element.codeorSku}' and UserID='$id' and invdate ='$formattedDate'";
//         String saleretunQtyrslt =
//             await mssqlConnection!.getData(saleretunQtyq);

//         List<dynamic> jsonResponsere = jsonDecode(saleretunQtyrslt);

//         if (jsonResponsere.isEmpty) {
//           log('isempty  -saleretune');
//         } else {
//           log('isnotempty  -saleretune');

//           double totalSalereturnQty = 0;

//           for (var item in jsonResponsere) {
//             String saleretunqty = item['Qty'].toString();
//             totalSalereturnQty += double.parse(
//                 saleretunqty); // Sum up the quantities as doubles
//           }

//           log('Total Sales Return Qty: $totalSalereturnQty');
//           saleretune =
//               totalSalereturnQty.toInt(); // Convert to integer if necessary
//         }

//         log('opening----------' + openingstock.toString());
//         log('sale----------' + sale.toString());
//         log('saleretune----------' + saleretune.toString());

//         vanstock = (openingstock - sale) + saleretune;

//         element.vanstock = double.parse(vanstock.toString());
//       }

//       // element.vanstock=
//     }
//     for (var element in selectedlist) {
//       if (int.parse(element.vanstock.toString()) < element.count) {
//         outofstocklist.add(element);
//       }
//     }
//     emit(state.copyWith(
//         isLoading: false,
//         outodstock: outofstocklist.isNotEmpty?1:2,
//         outofstocklist: outofstocklist));
//   });
//   }
// }
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/stock/stock_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(CheckoutState.initial()) {












//     on<Checkout>((event, emit) async {
//       log(event.selectedstock.length.toString());
//       emit(state.copyWith(isLoading: true, outodstock: 0));
//       final SharedPreferences prefs = await SharedPreferences.getInstance();
//       final logindata = prefs.getString('logindata');
//       Map<String, dynamic> jsonData = json.decode(logindata!);

//       final id = jsonData['username'];

//       DateTime now = DateTime.now();
//       DateTime midnight = DateTime(now.year, now.month, now.day);

// //   // Format the date
//       String formattedDate =
//           DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(midnight);
//       // var formattedDate = '2024-09-10 00:00:00.000';
//       final List<Stocklist> selectedlist = event.selectedstock;
//       final List<Stocklist> outofstocklist = [];

//       for (var element in selectedlist) {
//         log('loop start');
//         String vanopeningq =
//             "SELECT OpeningStock FROM dbo.vanSaleMainItems WHERE ItemCode='${element.codeorSku}' and UserName='$id' and date ='$formattedDate'";
//         log(vanopeningq);
//         String vanopeningrslt = await mssqlConnection!.getData(vanopeningq);
//         log(vanopeningrslt);

//         List<dynamic> jsonResponse = jsonDecode(vanopeningrslt);
//         // Extract the value of "MaxOrder"

//         int vanstock = 0;
//         if (jsonResponse.isEmpty) {
//           log('isempty --opening');
//         } else {
//           int openingstock = 0;
//           int sale = 0;
//           int saleretune = 0;

//           log('notempty');
//           String openingStockj = jsonResponse[0]['OpeningStock'];
//           log(openingStockj);
//      final     opening =  double.parse(openingStockj);
          
//           openingstock=opening.toInt();
//           String saleQtyq =
//               "SELECT Qty FROM dbo.invoicedetail WHERE pdtcode='${element.codeorSku}' and UserID='$id' and invdate ='$formattedDate'";

//           String saleQtyrslt = await mssqlConnection!.getData(saleQtyq);

//           List<dynamic> jsonResponseq = jsonDecode(saleQtyrslt);

//           if (jsonResponseq.isEmpty) {
//             log('isempty  -sale');
//           } else {
//             log('isnotempty  -sale');

//             double totalQty = 0;

//             for (var item in jsonResponseq) {
//               String qty = item['Qty'].toString();
//               totalQty += double.parse(qty); // Sum up the quantities as doubles
//             }

//             log('Total Qty: $totalQty');
//             sale = totalQty.toInt(); // Convert to integer if necessary
//           }

//           String saleretunQtyq =
//               "SELECT Qty FROM dbo.SalesReturnItems WHERE pdtcode='${element.codeorSku}' and UserID='$id' and invdate ='$formattedDate'";
//           String saleretunQtyrslt =
//               await mssqlConnection!.getData(saleretunQtyq);

//           List<dynamic> jsonResponsere = jsonDecode(saleretunQtyrslt);

//           if (jsonResponsere.isEmpty) {
//             log('isempty  -saleretune');
//           } else {
//             log('isnotempty  -saleretune');

//             double totalSalereturnQty = 0;

//             for (var item in jsonResponsere) {
//               String saleretunqty = item['Qty'].toString();
//               totalSalereturnQty += double.parse(
//                   saleretunqty); // Sum up the quantities as doubles
//             }

//             log('Total Sales Return Qty: $totalSalereturnQty');
//             saleretune =
//                 totalSalereturnQty.toInt(); // Convert to integer if necessary
//           }

//           log('opening----------' + openingstock.toString());
//           log('sale----------' + sale.toString());
//           log('saleretune----------' + saleretune.toString());

//           vanstock = (openingstock - sale) + saleretune;

//           element.vanstock = double.parse(vanstock.toString());
//         }

//         // element.vanstock=
//       }
//       for (var element in selectedlist) {
//         if (int.parse(element.vanstock.toString()) < element.count) {
//           outofstocklist.add(element);
//         }
//       }
//       emit(state.copyWith(
//           isLoading: false,
//           outodstock: outofstocklist.isNotEmpty ? 1 : 2,
//           outofstocklist: outofstocklist));
//     });

    on<Checkout>((event, emit) async {
      try {
        emit(state.copyWith(isLoading: true, outodstock: 0));

        final SharedPreferences prefs = await SharedPreferences.getInstance();
        final logindata = prefs.getString('logindata');
        Map<String, dynamic> jsonData = json.decode(logindata!);
        final id = jsonData['username'];
 DateTime now = DateTime.now();
  DateTime midnight = DateTime(now.year, now.month, now.day);

  // Format the date
  String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(midnight);

        final List<Stocklist> selectedlist = event.selectedstock;
        List<Stocklist> outofstocklist = [];

        // Construct a query to get opening stock, sales, and sales return in one go
        final codes = selectedlist.map((e) => "'${e.codeorSku}'").join(',');
       String query = """
  SELECT
    v.ItemCode,
    v.OpeningStock,
    COALESCE((SELECT SUM(i.Qty)
              FROM dbo.invoicedetail i
              WHERE i.pdtcode = v.ItemCode AND i.UserID = '$id' AND i.invdate = '$formattedDate'), 0) AS TotalSale,
    COALESCE((SELECT SUM(sr.Qty)
              FROM dbo.SalesReturnItems sr
              WHERE sr.pdtcode = v.ItemCode AND sr.UserID = '$id' AND sr.invdate = '$formattedDate'), 0) AS TotalSalesReturn
  FROM dbo.vanSaleMainItems v
  WHERE v.ItemCode IN ($codes) AND v.UserName = '$id' AND v.date = '$formattedDate'
  GROUP BY v.ItemCode, v.OpeningStock;
""";

        log(query);
      //   String query = """
      //   SELECT
      //     v.ItemCode, v.OpeningStock,
      //     ISNULL(SUM(i.Qty), 0) AS TotalSale,
      //     ISNULL(SUM(sr.Qty), 0) AS TotalSalesReturn
      //   FROM dbo.vanSaleMainItems v
      //   LEFT JOIN dbo.invoicedetail i ON v.ItemCode = i.pdtcode  AND i.invdate = '$formattedDate'
      //   LEFT JOIN dbo.SalesReturnItems sr ON v.ItemCode = sr.pdtcode  AND sr.invdate = '$formattedDate'
      //   WHERE v.ItemCode IN ($codes) AND v.UserName = '$id' AND v.date = '$formattedDate'
      //   GROUP BY v.ItemCode, v.OpeningStock;
      // """;
        String result = await mssqlConnection!.getData(query);
        List<dynamic> response = jsonDecode(result);
        bool fail = false;
        // Map the response back to the stock list
        for (var element in selectedlist) {
          var data = response.firstWhere(
              (row) => row['ItemCode'] == element.codeorSku,
              orElse: () => null);

          if (data != null) {
            log('00000000');
            int openingStock = int.parse(data['OpeningStock']);
            int totalSale = data['TotalSale'].toInt();
            int totalSalesReturn = data['TotalSalesReturn'].toInt();

            int vanstockk = openingStock - totalSale;
            int vanstock = vanstockk + totalSalesReturn;

            element.vanstock = double.parse(vanstock.toString());
            log('openingStock  ' + openingStock.toString());
            log('totalSale  ' + totalSale.toString());
            log('totalSalesReturn  ' + totalSalesReturn.toString());

            log('vanstock' + vanstock.toString());

            if (vanstock < element.count) {
              outofstocklist.add(element);
              log('adddf');
            }
          } else {

            element.vanstock =0;
              outofstocklist.add(element);


            // fail = true;


            log('No data found for item: ${element.pdtname}');
            // Fluttertoast.showToast(
            //     msg: 'No data found for item: ${element.pdtname}');
          }
        }

        // if (fail) {
        //   emit(state.copyWith(
        //     isLoading: false,
        //   ));
        // } else {
          emit(state.copyWith(
            isLoading: false,
            outodstock: outofstocklist.isEmpty ? 1 : 2,
            outofstocklist: outofstocklist,
          ));
        // }
      } catch (e) {
        log(e.toString());
      }
    });
    













on<Vanstockcheck>((event, emit) async {


  emit(state.copyWith(
        isLoadingvan: true,
        outodstock: 0,
      ));

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final logindata = prefs.getString('logindata');
      Map<String, dynamic> jsonData = json.decode(logindata!);
      final id = jsonData['username'];
 DateTime now = DateTime.now();
  DateTime midnight = DateTime(now.year, now.month, now.day);

  // Format the date
  String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(midnight);
      // var formattedDate = '2024-09-10 00:00:00.000';

      // Construct a query to get opening stock, sales, and sales return in one go
        String query = """
      SELECT
        v.OpeningStock,
        COALESCE((SELECT SUM(i.Qty) FROM dbo.invoicedetail i 
                  WHERE i.pdtcode = '${event.productid}' 
                  AND i.UserID = '$id' 
                  AND i.invdate = '$formattedDate'), 0) AS TotalSale,
        COALESCE((SELECT SUM(sr.Qty) FROM dbo.SalesReturnItems sr 
                  WHERE sr.pdtcode = '${event.productid}' 
                  AND sr.UserID = '$id' 
                  AND sr.invdate = '$formattedDate'), 0) AS TotalSalesReturn
      FROM dbo.vanSaleMainItems v
      WHERE v.ItemCode = '${event.productid}' 
      AND v.UserName = '$id' 
      AND v.date = '$formattedDate';
    """;

//  String query = """
//     SELECT
//       v.OpeningStock,
//       ISNULL(SUM(i.Qty), 0) AS TotalSale,
//       ISNULL(SUM(sr.Qty), 0) AS TotalSalesReturn
//     FROM dbo.vanSaleMainItems v
//     LEFT JOIN dbo.invoicedetail i ON v.ItemCode = i.pdtcode  AND i.invdate = '$formattedDate'
//     LEFT JOIN dbo.SalesReturnItems sr ON v.ItemCode = sr.pdtcode AND sr.invdate = '$formattedDate'
//     WHERE v.ItemCode = '${event.productid}' AND v.UserName = '$id' AND v.date = '$formattedDate'
//     GROUP BY v.OpeningStock;
//   """;
      try {
        String result = await mssqlConnection!.getData(query);
        List<dynamic> response = jsonDecode(result);

        int vanstock = 0;
        if (response.isNotEmpty) {
          var data = response[0]; // Since we expect only one result
          int openingStock = int.parse(data['OpeningStock']);
          int totalSale = data['TotalSale'].toInt();
          int totalSalesReturn = data['TotalSalesReturn'].toInt();
          log('openingStock   ' + openingStock.toString());
          log('totalSale   ' + totalSale.toString());

          log('totalSalesReturn   ' + totalSalesReturn.toString());

          vanstock = (openingStock - totalSale) + totalSalesReturn;
          log(vanstock.toString());
        } else {
          log('No stock data found for product: ${event.productid}');
           Fluttertoast.showToast(
                msg: 'No Van Stock  found for product: ${event.productid}');

          emit(state.copyWith(
              isLoadingvan: false, vanstock: 0)); // Fallback in case of error
        }

        emit(state.copyWith(isLoadingvan: false, vanstock: vanstock));
      } catch (error) {
        log('Error fetching vanstock data: $error');
        emit(state.copyWith(
            isLoadingvan: false, vanstock: 0)); // Fallback in case of error
      }
  // try {
  //   emit(state.copyWith(isLoadingvan: true, vanstock: 0));

  //   final SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final logindata = prefs.getString('logindata');
  //   Map<String, dynamic> jsonData = json.decode(logindata!);
  //   final id = jsonData['username'];

  //   DateTime now = DateTime.now();
  //   DateTime midnight = DateTime(now.year, now.month, now.day);
  //   String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(midnight);

  //   log('loop start');

  //   // Joint query to get OpeningStock, TotalSale, and TotalSalesReturn in one go
    // String query = """
    //   SELECT
    //     v.OpeningStock,
    //     COALESCE((SELECT SUM(i.Qty) FROM dbo.invoicedetail i 
    //               WHERE i.pdtcode = '${event.productid}' 
    //               AND i.UserID = '$id' 
    //               AND i.invdate = '$formattedDate'), 0) AS TotalSale,
    //     COALESCE((SELECT SUM(sr.Qty) FROM dbo.SalesReturnItems sr 
    //               WHERE sr.pdtcode = '${event.productid}' 
    //               AND sr.UserID = '$id' 
    //               AND sr.invdate = '$formattedDate'), 0) AS TotalSalesReturn
    //   FROM dbo.vanSaleMainItems v
    //   WHERE v.ItemCode = '${event.productid}' 
    //   AND v.UserName = '$id' 
    //   AND v.date = '$formattedDate';
    // """;
    
  //   log(query);
  //   String result = await mssqlConnection!.getData(query);
  //   List<dynamic> jsonResponse = jsonDecode(result);

  //   int vanstock = 0;
  //   if (jsonResponse.isEmpty) {
  //     log('No data found for product');
  //     emit(state.copyWith(isLoadingvan: false, vanstock: 0));
  //   } else {
  //     // Extract values from the response
  //     int openingStock = int.parse(jsonResponse[0]['OpeningStock']);
  //     int totalSale = jsonResponse[0]['TotalSale'].toInt();
  //     int totalSalesReturn = jsonResponse[0]['TotalSalesReturn'].toInt();

  //     log('openingStock: $openingStock');
  //     log('totalSale: $totalSale');
  //     log('totalSalesReturn: $totalSalesReturn');

  //     // Calculate vanstock
  //     vanstock = (openingStock - totalSale) + totalSalesReturn;

  //     log('vanstock: $vanstock');

  //     emit(state.copyWith(
  //       isLoadingvan: false,
  //       vanstock: vanstock,
  //     ));
  //   }
  // } catch (e) {
  //   log(e.toString());
  //   emit(state.copyWith(isLoadingvan: false, vanstock: 0));
  // }
});









      
   
    





      
    
  }
}
