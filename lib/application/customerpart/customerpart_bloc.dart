import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/customers/customers_list.dart';
import 'package:p_o_s/domain/customers/remark.dart';
import 'package:p_o_s/infrastructure/calculations/customer_next_id.dart';
import 'package:p_o_s/infrastructure/calculations/pay_id_next.dart';
import 'package:p_o_s/infrastructure/server.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'customerpart_event.dart';
part 'customerpart_state.dart';
part 'customerpart_bloc.freezed.dart';

class CustomerpartBloc extends Bloc<CustomerpartEvent, CustomerpartState> {
  CustomerpartBloc() : super(CustomerpartState.initial()) {
    List<Customerslist> customerslist = [];

    on<Add>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, isError: 0, customerlist: state.customerlist));

      try {
        final bool isConnected = await databaseConn();
        // log('connected done');

        if (customerslist
            .any((customer) => customer.contactsmsno == event.phone)) {
          Fluttertoast.showToast(
              msg: 'Phone number already exist. Please try another number');
          emit(state.copyWith(isLoading: false));
        } else {
          if (isConnected == true) {
            log('connected CustomerpartBloc');

            String idquery =
                "SELECT MAX(CONVERT(INT, RIGHT(cusid, LEN(cusid)-3)))  FROM dbo.CustomerDetails  ";
            String? result2 = await mssqlConnection!.getData(idquery);

            String nextID = getLastID(result2);
            final SharedPreferences prefs =
                await SharedPreferences.getInstance();

            final logindata = prefs.getString('logindata');
            Map<String, dynamic> jsonData = json.decode(logindata!);

            final id = jsonData['username'];
            final root = await prefs.getString('root');
            String maxrootquery =
                "SELECT MAX(CAST(CustomerListOrder AS INT)) AS MaxOrder FROM dbo.CustomerDetails WHERE CustomerRoot = '$root' ";
            String maxrootresult = await mssqlConnection!.getData(maxrootquery);
            log(maxrootresult + "-----------------------------------");

            List<dynamic> jsonResponse = jsonDecode(maxrootresult);
            int nextnumber = 0;

            // Extract the value of "MaxOrder"
           if (jsonResponse[0]['MaxOrder'] != null && jsonResponse[0]['MaxOrder'] is int) {
  log('maxOrder not null');
  int maxOrder = jsonResponse[0]['MaxOrder'] + 1;
  nextnumber = maxOrder;
} else {
  log('maxOrder is null');
  nextnumber = 1;  // Default to 1 if MaxOrder is null
}

            // Print the result (or use the variable in your app)
            log(nextnumber.toString());

            String query =
                "INSERT INTO dbo.CustomerDetails (cusid, catgory, status, bussinessname, bussinessaddr, shiptoname, contactperson, contactemailaddr, contacttelno, contactfax, contactsmsno, regcmpnyname, bankname, accno, ifsccode, taxexempt, specifictax1, disc, country, customtype, note, shiptonameaddr, city, gstno, CustomerTYPE, CompanyRegMobnumber, Companycontacttelno, companyEmailaddr, CompanycmpanyPinCode, shiptoMobileNumber, shiptoTelNumber, ShipmenttoEmail, lBankBeneficiaryname, BankPlace, CustomerRoot, CustomerListOrder, UserID) "
                "VALUES ('$nextID', '-', 'Yes', '${event.name}', '${event.addr}', '-', '-', '${event.email}', '${event.phone}', '-', '${event.phone}', '-', '-', '-', '-', 'no', '-', '-', 'india', 'Client', '${event.district}', '-', '${event.state}', '${event.gst}', '${event.gst == '' ? 'BtoC' : 'BtoB'}', '${event.phone}', '${event.phone}', '${event.email}', '-', '${event.phone}', '${event.phone}', '${event.email}', '-', '-', '${root ?? '-'}', '$nextnumber', '$id')";

// Execute the query
            await mssqlConnection!.writeData(query);

            emit(state.copyWith(
                isLoading: false,
                isError: 5,
                customerlist: state.customerlist));
          } else {
            log('not connected');
            emit(state.copyWith(
                isLoading: false,
                isError: 2,
                customerlist: state.customerlist));
          }
        }
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, isError: 3, customerlist: state.customerlist));

        log('Error: $e');
      }
    });

    on<CFetchlist>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: 0, customerlist: []));
      try {
        final bool isConnected = await databaseConn();
        // log('connected done');

        if (isConnected == true) {
          final SharedPreferences prefs = await SharedPreferences.getInstance();

          final root = await prefs.getString('root');

          // log('connected CustomerpartBloc 2');
          String query =
              "SELECT cusid, bussinessname, bussinessaddr, contactsmsno, gstno, CustomerTYPE, contactemailaddr, city, CustomerListOrder, note FROM dbo.CustomerDetails WHERE CustomerRoot = '$root' ORDER BY CAST(CustomerListOrder AS INT)";
          String result = await mssqlConnection!.getData(query);

          log(result);
          // log(result);
          customerslist = customerslistFromJson(result);
          // final String id =
          //     customerslist[customerslist.length - 1].bussinessname;

          // log(id);
          emit(state.copyWith(
              customerlist: customerslist, isError: 0, isLoading: false));
        } else {
          emit(state.copyWith(isLoading: false, isError: 2, customerlist: []));
        }
      } catch (e) {
        emit(state.copyWith(isLoading: false, isError: 1, customerlist: []));
        log('Error: $e');
      }
    });

    on<Editdata>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, isError: 0, customerlist: state.customerlist));

      try {
        final bool isConnected = await databaseConn();
        // log('connected done edit');

        if (isConnected == true) {
          log('enterr if');
          // Construct your update query with the appropriate WHERE condition
          String updateQuery =
              "UPDATE dbo.CustomerDetails SET bussinessname = '${event.name}' , bussinessaddr = '${event.addr}' , contactemailaddr = '${event.email}'   , companyEmailaddr = '${event.email}' , ShipmenttoEmail = '${event.email}' , shiptoTelNumber = '${event.phone}'  , shiptoMobileNumber = '${event.phone}' ,  Companycontacttelno = '${event.phone}', CompanyRegMobnumber = '${event.phone}' ,  contactsmsno = '${event.phone}' ,CustomerTYPE = '${event.gst == '' ? 'BtoC' : 'BtoB'}', contacttelno = '${event.phone}', gstno = '${event.gst}' ,note = '${event.district}',city = '${event.state}'  WHERE cusid = '${event.id}'";

          await mssqlConnection!.writeData(updateQuery);
          emit(state.copyWith(
              isLoading: false, isError: 6, customerlist: state.customerlist));
        } else {
          emit(state.copyWith(
              isLoading: false, isError: 2, customerlist: state.customerlist));

          log('not connected');
        }
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, isError: 3, customerlist: state.customerlist));

        log('Error: $e');
      }
    });
    on<SearchCustomer>((event, emit) {
      List<Customerslist> searchresult;
      if (event.query.isEmpty) {
        // If the search query is empty, show all items
        searchresult = customerslist;
      } else {
        // Filter the list based on the search query
        searchresult = customerslist
            .where((item) =>
                item.bussinessname
                    .toLowerCase()
                    .contains(event.query.toLowerCase()) ||
                item.contactsmsno!
                    .toLowerCase()
                    .contains(event.query.toLowerCase()))
            .toList();
      }
      emit(state.copyWith(
        customerlist: searchresult,
      ));
    });
    on<SelectBiller>((event, emit) {
      log('Biller selected');
      emit(state.copyWith(isLoading: false, biller: event.biller));
    });
    on<RemoveBiller>((event, emit) {
      log('Biller selected');
      emit(state.copyWith(isLoading: false, biller: null));
    });

    on<Remarklist>((event, emit) async {
      emit(state.copyWith(isLoading: true, remarkStatus: 0));
      try {
        final bool isConnected = await databaseConn();

        if (isConnected) {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          final logindata = prefs.getString('logindata');
          Map<String, dynamic> jsonData = json.decode(logindata!);
          final id = jsonData['username'];
          final root = await prefs.getString('root');

          DateTime now = DateTime.now();
          DateTime midnight = DateTime(now.year, now.month, now.day);

          // Format the date
          String formattedDate =
              DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(midnight);
          String query =
              "SELECT CustomerAttendance FROM dbo.CustomerAttendanceRemark";
          String result = await mssqlConnection!.getData(query);
          log(result);

          List<dynamic> response = jsonDecode(result);
          List<String> customerAttendanceList = response
              .map((item) => item['CustomerAttendance'].toString())
              .toList();
          String remarkquery =
              "SELECT Remark , id FROM dbo.CustomerAttendance WHERE Date='$formattedDate' AND Username='$id' AND RootName='$root' AND CustomerID='${event.cusId}'";
          String remarkresult = await mssqlConnection!.getData(remarkquery);

          log(remarkresult);
          List<dynamic> jsonResponsere = jsonDecode(remarkresult);
          if (jsonResponsere.isEmpty) {
            emit(state.copyWith(
                customerAttendanceList: customerAttendanceList,
                slctremark: null,
                isLoading: false));
            emit(state.copyWith(slctremark: null, isLoading: false));
            log('null remark');
          } else {
            RemartData remarkdata = rootmodelFromJson(remarkresult).first;

            emit(state.copyWith(
                customerAttendanceList: customerAttendanceList,
                slctremark: remarkdata,
                isLoading: false));
            log('notnull remark');
            // log(remarkfromTable);
          }

          log(customerAttendanceList.length.toString());
        } else {}
      } catch (e) {
        log(e.toString());
      }
    });

    on<Addremark>((event, emit) async {
      try {
        final bool isConnected = await databaseConn();

        if (isConnected) {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          final logindata = prefs.getString('logindata');
          Map<String, dynamic> jsonData = json.decode(logindata!);
          final id = jsonData['username'];
          final root = await prefs.getString('root');

          DateTime now = DateTime.now();
          DateTime midnight = DateTime(now.year, now.month, now.day);

          // Format the date
          String formattedDate =
              DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(midnight);
          if (event.editdata == null) {
            log('INSERT');

            String query =
                "INSERT INTO dbo.CustomerAttendance (Date,Username,RootName,CustomerID,CustomerName,Remark,Description) "
                "VALUES  ('$formattedDate', '$id', '$root', '${event.cusId}', '${event.name}', '${event.remark}', '${event.desc}')";

            await mssqlConnection!.writeData(query);
            emit(state.copyWith(remarkStatus: 1));
          } else {
            log('UPDATE');
            String updateQuery =
                "UPDATE dbo.CustomerAttendance SET Remark = '${event.remark}', Description = '${event.desc}' WHERE id = '${event.editdata!.id}'";
            await mssqlConnection!.writeData(updateQuery);

            emit(state.copyWith(remarkStatus: 1));
          }
        } else {}
      } catch (e) {
        log(e.toString());
      }
    });
  }
}
