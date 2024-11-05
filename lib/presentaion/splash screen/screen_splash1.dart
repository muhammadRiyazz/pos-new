// ignore_for_file: prefer_interpolation_to_compose_strings, no_leading_underscores_for_local_identifiers

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/presentaion/screen%20home/screen_home.dart';
import 'package:p_o_s/presentaion/screen%20log%20in/screen_log_in.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash1 extends StatelessWidget {
  const ScreenSplash1({super.key});

  @override
  Widget build(BuildContext context) {
    delay(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.height * .3,
              child: Image.asset(
                'assets/splashLogo.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          h20,
          h20,
          h20,
          SizedBox(
            width: MediaQuery.of(context).size.width * .7,
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(30),
              backgroundColor: Colors.black12,
              color: maincolor1,
            ),
          ),
          h20,
          h20,
          h20,
          h20,
          Text(
            'Powered by Eye2EyeTech',
            style: TextStyle(color: maincolor1, fontSize: 16),
          )
        ],
      )),
    );
  }

  delay(cntx) async {


    Future.delayed(const Duration(seconds: 3), () async{
     final SharedPreferences prefs = await SharedPreferences.getInstance();

    bool? login = prefs.getBool('login');
    log(login.toString());
    if (login == null||login==false) {
      Navigator.pushAndRemoveUntil(cntx, MaterialPageRoute(
        builder: (context) {
          return const ScreenLogin();
        },
      ), (route) => false);
    } else {
      

      Navigator.pushAndRemoveUntil(cntx, MaterialPageRoute(
        builder: (context) {
          return const ScreenHome();
        },
      ), (route) => false);
    }
    });
    
  }
}
