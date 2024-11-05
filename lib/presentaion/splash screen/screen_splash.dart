// ignore_for_file: prefer_interpolation_to_compose_strings, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:p_o_s/presentaion/splash%20screen/screen_splash1.dart';
import 'package:page_transition/page_transition.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
    //   BlocProvider.of<BillBloc>(context).add(const FetchBill());
    //    BlocProvider.of<ReportBloc>(context)
    //     .add(const Todayreport());
    // BlocProvider.of<BillBloc>(context).add(const FetchReturnBill());
    //   BlocProvider.of<ProfileBloc>(context).add(const GetProfile());
    //   BlocProvider.of<CustomerpartBloc>(context).add(const CFetchlist());
    //   BlocProvider.of<SalesItemBloc>(context).add(const ItemsList());
    //   BlocProvider.of<ReportBloc>(context)
    //       .add(const FetchTotalSaleReports(eDate: '', sDate: ''));
    //   BlocProvider.of<ReportBloc>(context)
    //       .add(const FetchTotalSaleReturnReports(eDate: '', sDate: ''));
    //   BlocProvider.of<PaymentMethordBloc>(context).add(const Fetchtypes());
    });

    delay(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        // SizedBox(
        //   height: double.infinity,
        //   width: double.infinity,
        //   child: Image.asset(
        //     'assets/bg.jpg',
        //     fit: BoxFit.fill,
        //   ),
        // ),
        Center(
            child: SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: Image.asset(
            'assets/logo123.png',
            fit: BoxFit.cover,
          ),
        )),
        const Positioned(
          bottom: 10,
          right: 10,
          left: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Version 1.0.0',
                style: TextStyle(
                    fontSize: 12, color: Colors.white38, letterSpacing: 1),
              ),
            ],
          ),
        )
      ]),
    );
  }

  delay(cntx) async {
    // var box = await Hive.openBox('personDataBox');
    // var _userId = await box.get('userId');

    // if (_userId != null) {
    //   log("session>>>>>" + _userId.toString());

    //   userId = _userId.toString();

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushAndRemoveUntil(
          cntx,
          PageTransition(
            duration: const Duration(milliseconds: 300),
            type: PageTransitionType.fade,
            child: const ScreenSplash1(),
          ),
          (route) => false);
    });
    // } else {
    //   Future.delayed(const Duration(seconds: 1), () {
    //     Navigator.pushAndRemoveUntil(
    //         cntx,
    //         PageTransition(
    //           duration: const Duration(milliseconds: 300),
    //           type: PageTransitionType.fade,
    //           child: const ScreenLogin(),
    //         ),
    //         (route) => false);
    //   });
    // }
  }
}
