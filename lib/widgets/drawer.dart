import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/application/login%20bloc/login_bloc.dart';
import 'package:p_o_s/commons/profile_varibles.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/presentaion/blutooth%20connectivity/bluetooth.dart';
import 'package:p_o_s/presentaion/screen%20accounts/screen_accounts.dart';
import 'package:p_o_s/presentaion/screen%20bills%20of%20a%20customer/screen_bills_of_customer.dart';
import 'package:p_o_s/presentaion/screen%20home/screen_home.dart';
import 'package:p_o_s/presentaion/screen%20log%20in/screen_log_in.dart';
import 'package:p_o_s/presentaion/screen%20reports/screen_reports.dart';
import 'package:p_o_s/presentaion/screen%20sale/screen_sales.dart';
import 'package:p_o_s/presentaion/screen%20sales%20return/screen_sales_return.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                color: maincolor1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14.0, vertical: 14),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(cmpname ?? '',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          FutureBuilder(
                            future: loginanem(),
                            builder: (context, snapshot) {
                              return Text(
                                  snapshot.hasData
                                      ? snapshot.data.toString()
                                      : '--',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold));
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenHome(),
                  ),
                  (route) => false);
            },
            leading:
                const Icon(Icons.home, color: Color.fromARGB(255, 72, 72, 72)),
            title: Text(
              'Home',
              style: GoogleFonts.alegreya(
                fontSize: 18,
                color: maincolor1,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenSales(),
                ),
              );
            },
            leading: const Icon(Icons.add_shopping_cart_rounded,
                color: const Color.fromARGB(255, 72, 72, 72)),
            title: Text(
              'Sale',
              style: GoogleFonts.alegreya(
                fontSize: 18,
                color: maincolor1,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ScreenSalesReturn(
                    from: 0,
                  ),
                ),
              );
            },
            leading: const Icon(Icons.remove_shopping_cart_rounded,
                color: const Color.fromARGB(255, 72, 72, 72)),
            title: Text(
              'Sales Return',
              style: GoogleFonts.alegreya(
                fontSize: 18,
                color: maincolor1,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenViewBills(),
                ),
              );
            },
            leading: const Icon(Icons.shopping_cart_rounded,
                color: Color.fromARGB(255, 72, 72, 72)),
            title: Text(
              'View Bills',
              style: GoogleFonts.alegreya(
                fontSize: 18,
                color: maincolor1,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenAccounts(),
                ),
              );
            },
            leading: const Icon(Icons.switch_account_sharp,
                color: const Color.fromARGB(255, 72, 72, 72)),
            title: Text(
              'Accounts',
              style: GoogleFonts.alegreya(
                fontSize: 18,
                color: maincolor1,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenBluetooth(),
                ),
              );
            },
            leading: const Icon(Icons.bluetooth_audio_rounded,
                color: Color.fromARGB(255, 72, 72, 72)),
            title: Text(
              'Bluetooth',
              style: GoogleFonts.alegreya(
                fontSize: 18,
                color: maincolor1,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenReports(),
                ),
              );
            },
            leading: const Icon(Icons.content_paste_search_rounded,
                color: Color.fromARGB(255, 72, 72, 72)),
            title: Text(
              'Report',
              style: GoogleFonts.alegreya(
                fontSize: 18,
                color: maincolor1,
              ),
            ),
          ),
          ListTile(
            onTap: () async {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          h10,
                          Container(
                            height: 6,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(221, 229, 229, 229),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            width: 50,
                          ),
                          h10,
                          const Text(
                            'Logout',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Divider(),
                          h10,
                          const Text(
                            'Are you sure?',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          const Text('You want to logout',
                              style: TextStyle(
                                fontSize: 13,
                              )),
                          h15,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Expanded(
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Cancel'))),
                                w5,
                                Expanded(
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    maincolor1)),
                                        onPressed: () async {
                                          final SharedPreferences prefs =
                                              await SharedPreferences
                                                  .getInstance();

                                          // await prefs.setBool('server', false);
                                          await prefs.setBool('login', false);
                                          Navigator.pushAndRemoveUntil(context,
                                              MaterialPageRoute(
                                            builder: (context) {
                                              return const ScreenLogin();
                                            },
                                          ), (route) => false);
                                        },
                                        child: const Text(
                                          'Yes , Sure',
                                          style: TextStyle(color: Colors.white),
                                        )))
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  });
            },
            leading: const Icon(Icons.power_settings_new_rounded,
                color: const Color.fromARGB(255, 72, 72, 72)),
            title: Text(
              'Log Out',
              style: GoogleFonts.alegreya(
                fontSize: 18,
                color: maincolor1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<String> databse() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('serverconn');
    log(jsonString.toString());
    String name = jsonDecode(jsonString.toString())['databaseName'];
    log(name);
    return name;
  }

  Future<String> loginanem() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString('logindata');
    log(jsonString.toString());
    String username = jsonDecode(jsonString.toString())['username'];
    log(username);
    return username;
  }
}
