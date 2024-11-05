import 'dart:convert';
import 'dart:developer';
import 'dart:ffi';

import 'package:mssql_connection/mssql_connection.dart';
import 'package:p_o_s/core/server_conn.dart';
import 'package:p_o_s/domain/conn_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> databaseConn() async {
  bool? isConnecteddb;
  try {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('serverconn');
    if (jsonString != null) {
      jsonString = jsonString.trim();

      if (jsonString.isNotEmpty) {
        Map<String, dynamic> jsonData = json.decode(jsonString);
        log(jsonData.toString());

        final DatabaseConfig databaseConfig = DatabaseConfig.fromJson(jsonData);
        mssqlConnection = MssqlConnection.getInstance();

        bool isConnected = await mssqlConnection!.connect(
          ip: databaseConfig.ip,
          port: databaseConfig.port,
          databaseName: databaseConfig.databaseName,
          username: databaseConfig.username,
          password: databaseConfig.password,
          timeoutInSeconds: 15,
        );
        log(isConnected.toString());
        isConnecteddb = true;
      } else {
        log('Empty JSON string found in SharedPreferences.');
      }
    } else {
      log('No data found in SharedPreferences.');
    }
  } catch (e) {
    log('Error: $e');
    isConnecteddb = false;
  }
  return isConnecteddb!;
}
