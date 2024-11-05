import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_o_s/application/appentyno/appentyno_bloc.dart';
import 'package:p_o_s/application/bills/bloc/bill_bloc.dart';
import 'package:p_o_s/application/company%20profile/bloc/profile_bloc.dart';
import 'package:p_o_s/application/login%20bloc/login_bloc.dart';
import 'package:p_o_s/application/paymenTtype/payment_methord_bloc.dart';
import 'package:p_o_s/application/salesitems/sales_item_bloc.dart';
import 'package:p_o_s/application/customerpart/customerpart_bloc.dart';
import 'package:p_o_s/application/report/bloc/report_bloc.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/infrastructure/bluethooth_print_func.dart';
import 'package:p_o_s/presentaion/screen%20accounts/screen_accounts.dart';
import 'package:p_o_s/presentaion/screen%20bills%20of%20a%20customer/screen_bills_of_customer.dart';
import 'package:p_o_s/presentaion/screen%20reports/screen_reports.dart';
import 'package:p_o_s/presentaion/screen%20sale/screen_sales.dart';
import 'package:p_o_s/presentaion/screen%20sales%20return/screen_sales_return.dart';

import 'package:p_o_s/widgets/drawer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sunmi_printer_plus/sunmi_printer_plus.dart';

// class ScreenHome extends StatelessWidget {
//   const ScreenHome({super.key});

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  bool printBinded = false;
  int paperSize = 0;
  String serialNumber = "";
  String printerVersion = "";
  @override
  void initState() {
                                                    BlocProvider.of<AppentynoBloc>(context).add(AppentynoEvent.fetchAppEnty());

    super.initState();
    BlocProvider.of<BillBloc>(context).add(const FetchBill());
    BlocProvider.of<BillBloc>(context).add(const FetchReturnBill());
    BlocProvider.of<ReportBloc>(context)
        .add(const FetchTotalSaleReports(eDate: '', sDate: ''));
    BlocProvider.of<ReportBloc>(context)
        .add(const FetchTotalSaleReturnReports(eDate: '', sDate: ''));
    BlocProvider.of<ReportBloc>(context).add(const Todayreport());
    BlocProvider.of<ProfileBloc>(context).add(const GetProfile());

    BlocProvider.of<CustomerpartBloc>(context).add(const CFetchlist());
    BlocProvider.of<SalesItemBloc>(context).add(const ItemsList());

    BlocProvider.of<PaymentMethordBloc>(context).add(const Fetchtypes());

    bindingPrinter().then((bool? isBind) async {
      SunmiPrinter.paperSize().then((int size) {
        setState(() {
          paperSize = size;
        });
      });

      SunmiPrinter.printerVersion().then((String version) {
        setState(() {
          printerVersion = version;
        });
      });

      SunmiPrinter.serialNumber().then((String serial) {
        setState(() {
          serialNumber = serial;
        });
      });

      setState(() {
        printBinded = isBind!;
      });
    });
  }

  /// must binding ur printer at first init in app
  Future<bool?> bindingPrinter() async {
    final bool? result = await SunmiPrinter.bindingPrinter();
    return result;
  }

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<BillBloc>(context).add(const FetchBill());
    // BlocProvider.of<BillBloc>(context).add(const FetchReturnBill());

    return Scaffold(
        drawerEnableOpenDragGesture: true,
        drawerScrimColor: Colors.black26,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          title: const Text('Home'),
          actions: [
            // IconButton(
            //     onPressed: () {
            //           BlocProvider.of<AppentynoBloc>(context).add(AppentynoEvent.fetchAppEnty());

            //     },
            //     icon: Icon(Icons.abc))
          ],
        ),
        drawer: const CustomDrawer(),
        body: RefreshIndicator(
          onRefresh: () async {
            BlocProvider.of<ReportBloc>(context).add(const Todayreport());
            BlocProvider.of<BillBloc>(context).add(const FetchReturnBill());
            BlocProvider.of<ProfileBloc>(context).add(const GetProfile());
            BlocProvider.of<CustomerpartBloc>(context).add(const CFetchlist());
            BlocProvider.of<SalesItemBloc>(context).add(const ItemsList());
            BlocProvider.of<ReportBloc>(context)
                .add(const FetchTotalSaleReports(eDate: '', sDate: ''));
            BlocProvider.of<ReportBloc>(context)
                .add(const FetchTotalSaleReturnReports(eDate: '', sDate: ''));
            BlocProvider.of<BillBloc>(context).add(const FetchBill());

            BlocProvider.of<PaymentMethordBloc>(context)
                .add(const Fetchtypes());
          },
          child: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                child: Container(padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color:maincolor1,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BlocBuilder<ReportBloc, ReportState>(
                      builder: (context, state) {
                        return Column(
                          children: [
                             state.isTotalLoading?SizedBox():  Container(
                                padding: EdgeInsets.all(10),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 193, 193, 193))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Route ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      '${state.root}',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )),
                                h10,                              
                                

                            Container(padding: EdgeInsets.symmetric(vertical: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Colors.white)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('Total Sales',
                                              style: whiteHeadStyle),
                                          h15,
                                          Text(
                                              state.isTotalLoading
                                                  ? '--'
                                                  : '₹ ${state.totalSale}',
                                              style: whiteHeadStyle)
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            width: 1.5,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .05,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("Today's Sales Return",
                                              style: whiteHeadStyle),
                                          h15,
                                          Text(
                                              state.isTotalLoading
                                                  ? '--'
                                                  : '₹ ${state.totalSaleReturn}',
                                              style: whiteHeadStyle)
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              RefreshIndicator(
                onRefresh: () async {
                  BlocProvider.of<BillBloc>(context).add(const FetchBill());
                  BlocProvider.of<BillBloc>(context)
                      .add(const FetchReturnBill());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<SalesItemBloc>(context)
                              .add(Fetchreasone());

                          Navigator.push(
                            context,
                            PageTransition(
                              duration: const Duration(milliseconds: 250),
                              type: PageTransitionType.rightToLeft,
                              child: ScreenSalesReturn(
                                from: 0,
                              ),
                            ),
                          );
                        },
                        child: const Text('Sales return')),
                    ElevatedButton(
                      onPressed: () {




                        Navigator.push(
                          context,
                          PageTransition(
                            duration: const Duration(milliseconds: 250),
                            type: PageTransitionType.rightToLeft,
                            child: const ScreenSales(),
                          ),
                        );
                      },
                      child: const Text('   Sales   '),
                    ),
                    ElevatedButton(
                        onPressed: () {

                          final double outstaing=2000;
                          balace(billtotal: 1000, outstanding:outstaing.abs(), recived: 1000, DRCR: 'Cr');
                          Navigator.push(
                            context,
                            PageTransition(
                              duration: const Duration(milliseconds: 250),
                              type: PageTransitionType.rightToLeft,
                              child: ScreenSalesReturn(
                                from: 1,
                              ),
                            ),
                          );
                        },
                        child: const Text('Estimate')),
                  ],
                ),
              ),
              h10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<BillBloc>(context)
                            .add(const FetchBill());
                        Navigator.push(
                          context,
                          PageTransition(
                            duration: const Duration(milliseconds: 250),
                            type: PageTransitionType.rightToLeft,
                            child: const ScreenViewBills(),
                          ),
                        );
                      },
                      child: const Text('View bills')),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          duration: const Duration(milliseconds: 250),
                          type: PageTransitionType.rightToLeft,
                          child: const ScreenAccounts(),
                        ),
                      );
                    },
                    child: const Text('Accounts'),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<ReportBloc>(context).add(
                            const FetchTotalSaleReports(eDate: '', sDate: ''));
                        BlocProvider.of<ReportBloc>(context).add(
                            const FetchTotalSaleReturnReports(
                                eDate: '', sDate: ''));
                        Navigator.push(
                            context,
                            PageTransition(
                              duration: const Duration(milliseconds: 250),
                              type: PageTransitionType.rightToLeft,
                              child: const ScreenReports(),
                            ));
                      },
                      child: const Text('Reports')),
                ],
              )
            ],
          ),
        ));
  }
}
