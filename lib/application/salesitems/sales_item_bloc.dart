import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:p_o_s/constans/dummydata.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/addbillmodel/addbillmodel.dart';
import 'package:p_o_s/domain/cata%20model/cata_model.dart';
import 'package:p_o_s/domain/stock/stock_model.dart';

import 'package:p_o_s/infrastructure/server.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'sales_item_event.dart';
part 'sales_item_state.dart';
part 'sales_item_bloc.freezed.dart';

class SalesItemBloc extends Bloc<SalesItemEvent, SalesItemState> {
  SalesItemBloc() : super(SalesItemState.initial()) {
    List<Stocklist> itemsToBill = [];
    List<Stocklist> mainStocklist = [];
    String selectedCata = '';
    double sum = 0;

    on<ItemsList>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        isError: false,
      ));
      log('strat');
      try {
        final bool isConnected = await databaseConn();
        // log('connected done');

        log(isConnected.toString());
        if (isConnected == true) {
          // log('connected ItemsList');
          String query = '''
  SELECT Id, codeorSKU, category, pdtname, HSNCode, description, puramnt, puramntwithtax, 
         saleamnt, saleamntwithtax, profit, pcs, tax, saletaxamnt, stockcontrol, totalstock, 
         lowstock, warehouse, vendername, venderinvoice, vendercontactname, vendertax, 
         purtaxamnt, venderimg, vendertotalamnt, vendertotaltaxamnt, privatenote, Date, 
         productimg, status, lossorgain, vendorid, hsncode1, venIGST, venIGSTamnt, venCGST, 
         venCGSTamnt, venSGST, venSGSTamnt, SERorGOODS, itemMRP, SaleincluORexclussive, 
         PurchaseincluORexclussive, InitialCost, AvgCost, MessurmentsUnit, SincluorExclu, 
         PincluorExclu, BarcodeID, SupplierName, CessBasedonQntyorValue, CessRate, CatType, 
         CatBrand, CatModelNo, CatColor, CatSize, CatPartNumber, CatSerialNumber, AliasNameID, 
         InitialQuantity, PCatType, BrandType, RePackingApplicable, RepackingTo, RepackingBalance, 
         BulkItemQty, BalanceRepackingitemUnit, RepackingitemUnit, RepackingItemOf 
  FROM dbo.MainStock 
  WHERE warehouse = 'Finished Goods';
''';

          String cataQuery = 'SELECT Id,pdtfilter FROM dbo.Category GO';

          String result = await mssqlConnection!.getData(query);
          String cataResult = await mssqlConnection!.getData(cataQuery);
          List<Catagory> cata = catagoryFromJson(cataResult);
          mainStocklist = stocklistFromJson(result);
       
          // log(catagoryFromJson(cataResult).toString());
          emit(state.copyWith(
              isLoading: false,
              isError: false,
              items: mainStocklist,
              cata: cata));
          // log('emitting list');
          // log(result);
        } else {
          emit(state.copyWith(
            isLoading: false,
            isError: true,
          ));
          // Fluttertoast.showToast(msg: 'Database is not connected');
          log('not connected');
        }
      } catch (e) {
        log('Sales bloc Error: $e');
      }

      // emit(state.copyWith(
      //     isLoading: false,
      //     isError: false,
      //     items: ));
    });
    on<AddToBill>((event, emit) async {
      // log('>>>>>>>>>>   product  ${event.product.pdtname}');
      // if (event.increment) {
      //   log('added first item condition' + event.increment.toString());
      //   if (itemsToBill
      //       .any((existingItem) => existingItem.id != event.product.id)) {
      //     itemsToBill.add(event.product);
      //     log('added first item ');
      //   }
      // } else {
      //   log('removed last item22222');
      //   if (itemsToBill.any((existingItem) =>
      //       existingItem.id == event.product.id && existingItem.count == 1)) {
      //     log('removed last item1111');
      //     final index = itemsToBill
      //         .indexWhere((i) => i.id == event.product.id && i.count == 1);
      //     itemsToBill.removeAt(index);
      //     log('removed last item');
      //     // log('>>>>>>>>>>   product id addto bill ${event.product.id}');
      //     // final index = itemsToBill.indexWhere((i) => i.id == event.product.id);
      //     // event.increment == false && itemsToBill[index].count > 0
      //     //     ? itemsToBill[index].count--
      //     //     : itemsToBill[index].count++;
      //   }
      // }
      if (itemsToBill
          .any((existingItem) => existingItem.id == event.product.id)) {
        // final index = itemsToBill.indexWhere(
        //     (i) => i.id == event.product.id && event.product.count == 1);
        // itemsToBill.removeAt(index);
        // log('removed last item');
        // log('>>>>>>>>>>   product id addto bill ${event.product.id}');
        final index = itemsToBill.indexWhere((i) => i.id == event.product.id);
        if (itemsToBill[index].count == 1 && event.increment == false) {
          itemsToBill.removeAt(index);
        }
      } else {
        itemsToBill.add(event.product);
        log('added first item');
      }

      emit(state.copyWith(
        toBillItems: itemsToBill,
      ));
    });
    on<Quantity>((event, emit) {
      // log('>>>>>>>>>>   rate${event.rate}');
      // log('>>>>>>>>>>   quantity${event.qty}');
      emit(state.copyWith(
        isLoading: true,
      ));
      if (mainStocklist.any((existingItem) => existingItem.id == event.id)) {
        log('>>>>>>>>>>   id qty ${event.id}');
        final index = mainStocklist.indexWhere((i) => i.id == event.id);
        if (event.increment) {
          mainStocklist[index].count++;
          log(mainStocklist[index].pdtname +
              "<<< add >>>" +
              mainStocklist[index].count.toString());

          log('emitted add ' + mainStocklist[index].count.toString());
        } else {
          mainStocklist[index].count > 0
              ? mainStocklist[index].count--
              : mainStocklist[index].count = 0;

          log(mainStocklist[index].pdtname +
              "<<< minus >>>" +
              mainStocklist[index].count.toString());

          log('emitted minus');
        }
        // == false && mainStocklist[index].count > 0
        //     ? mainStocklist[index].count = mainStocklist[index].count - 1
        //     : ;
      }

      emit(state.copyWith(
          isLoading: false,
          items: selectedCata == '' || selectedCata == 'All Categories'
              ? mainStocklist
              : mainStocklist
                  .where((element) => element.category == selectedCata)
                  .toList()));
    });
    on<ItemFromBSheet>((event, emit) {
      log('---------------');
      log(event.reason.toString());

      // emit(state.copyWith(isLoading: true));

      // Find if the item already exists in itemsToBill
      final existingIndex =
          itemsToBill.indexWhere((item) => item.id == event.product.id);

      if (existingIndex != -1) {
        log("!= -1-----------");
        // If item exists and reason is provided, directly modify the returneReasone field
        if (event.reason != null) {
          itemsToBill[existingIndex].returneReasone = event.reason;
          log('!= null');
          log(itemsToBill[existingIndex].returneReasone.toString());
        }

        // Remove item if quantity is 0
        if (event.qty == 0) {
          itemsToBill.removeAt(existingIndex);
        }
      } else if (event.qty > 0) {
        log('ppp---ppp');
        // Add new item if quantity is greater than 0, and set returneReasone if provided
        event.product.returneReasone = event.reason;
        itemsToBill.add(event.product);
      } else {
        event.product.returneReasone = event.reason;

        log('message000');
      }

      emit(state.copyWith(
        isLoading: false,
        toBillItems: itemsToBill,
      ));
    });

    on<QuantityFromBSheet>((event, emit) {
      emit(state.copyWith(
        isLoading: true,
      ));
      if (mainStocklist.any((existingItem) => existingItem.id == event.id)) {
        log('>>>>>>>>>>   id  ${event.id} >>>>>>> qty ${event.qty} >>>>>>> rate ${event.newItemAmt}');

        final index = mainStocklist.indexWhere((i) => i.id == event.id);
        log('>>>>>>>>>> ' + index.toString());

        mainStocklist[index].saleamntwithtax = event.newItemAmt;
        mainStocklist[index].count = event.qty;

        log('current count ' + mainStocklist[index].count.toString());
        log('current count ' + mainStocklist[index].saleamntwithtax.toString());
      }
      // if (selectedCata=='') {
      //   emit(state.copyWith(isLoading: false, items: mainStocklist));
      // } else {
      //   List<Stocklist> list = mainStocklist.where((element) => element.category==selectedCata)
      //   emit(state.copyWith(isLoading: false, items: mainStocklist.where((element) => false)));
      // }
      emit(state.copyWith(
          isLoading: false,
          items: selectedCata == '' || selectedCata == 'All Categories'
              ? mainStocklist
              : mainStocklist
                  .where((element) => element.category == selectedCata)
                  .toList()));
    });
    on<SearchItem>((event, emit) {
      List<Stocklist> searchresult;
      selectedCata = event.cata.toString();
      log('cata  >>  ' + event.cata.toString());
      log('query  >>  ' + event.query.toString());
      if (event.query.isEmpty && event.cata.isEmpty) {
        // If the search query is empty, show all items
        searchresult = mainStocklist;
      } else if (event.cata == 'All Categories') {
        log('All cata');
        searchresult = mainStocklist;
        event.query.isNotEmpty
            ? searchresult = mainStocklist
                .where((item) => item.pdtname
                    .toLowerCase()
                    .contains(event.query.toLowerCase()))
                .toList()
            : null;
      } else {
        // Filter the list based on the search query
        event.cata != '' && event.query.isNotEmpty
            ? searchresult = mainStocklist
                .where((item) =>
                    item.pdtname
                        .toLowerCase()
                        .contains(event.query.toLowerCase()) &&
                    item.category
                        .toLowerCase()
                        .contains(event.cata.toLowerCase()))
                .toList()
            : event.cata == '' && event.query.isNotEmpty
                ? searchresult = mainStocklist
                    .where((item) => item.pdtname
                        .toLowerCase()
                        .contains(event.query.toLowerCase()))
                    .toList()
                : event.cata == 'All Categories' && event.query.isNotEmpty
                    ? searchresult = mainStocklist
                        .where((item) => item.pdtname
                            .toLowerCase()
                            .contains(event.query.toLowerCase()))
                        .toList()
                    : event.cata == 'All Categories' && event.query.isEmpty
                        ? searchresult = mainStocklist
                        : searchresult = mainStocklist
                            .where((item) => item.category
                                .toLowerCase()
                                .contains(event.cata.toLowerCase()))
                            .toList();
      }
      emit(state.copyWith(
          isLoading: false,
          isError: false,
          items: searchresult,
          selectedCata: event.cata));
    });
    on<Clearing>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      log('>>>>>>>>>>   id to remove ${event.product.id}');

      final index = itemsToBill.indexWhere((i) => i.id == event.product.id);
      itemsToBill[index].count = 0;
      itemsToBill.removeAt(index);
      log(itemsToBill.toString());
      emit(state.copyWith(
        isLoading: false,
        toBillItems: itemsToBill,
      ));
      log(itemsToBill.toString());

      log('Item removed');
    });
    on<FetchToBillList>((event, emit) {
      log('emitting to bill list');
      emit(state.copyWith(toBillItems: itemsToBill));
    });
    on<ClearingToBillList>((event, emit) async {
      itemsToBill.clear();
      emit(state.copyWith(toBillItems: itemsToBill));
    });

    on<Fetchreasone>((event, emit) async {
      try {
        final bool isConnected = await databaseConn();

        if (isConnected) {
          String query = "SELECT Reason  FROM dbo.SalesReturnReason GO";

          String result = await mssqlConnection!.getData(query);
          log(result);
          List<String> reasonlist = extractReasonlist(result);

          emit(state.copyWith(reasonlist: reasonlist));
        } else {
          emit(state.copyWith(reasonlist: []));
        }
      } catch (e) {
        log("Error from report bloc--- : $e");
      }
    });
  }
}

List<String> extractReasonlist(String jsonString) {
  List<dynamic> parsedJson = json.decode(jsonString);
  List<String> paymentMethods = [];

  for (var item in parsedJson) {
    String paymentMethod = item['Reason'];
    paymentMethods.add(paymentMethod);
  }

  return paymentMethods;
}











