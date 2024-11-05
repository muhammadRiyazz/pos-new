import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/application/bills/bloc/bill_bloc.dart';
import 'package:p_o_s/commons/profile_varibles.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/domain/viewbill%20model/view_bill_model.dart';
import 'package:p_o_s/infrastructure/dateformate.dart';
import 'package:p_o_s/presentaion/blutooth%20connectivity/bluetooth.dart';

class ScreenBillDetails extends StatelessWidget {
  const ScreenBillDetails({super.key, required this.data});
  final ViewBillModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bill Details'),
      ),
      body: BlocBuilder<BillBloc, BillState>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: maincolor1,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                )
              : ListView(
                  children: [
                    Container(
                      // height: MediaQuery.of(context).size.height * .2,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: maincolor1,
                        // borderRadius: BorderRadius.only(
                        //     bottomLeft: Radius.circular(20),
                        //     bottomRight: Radius.circular(20))
                      ),
                      child: Column(
                        children: [
                          h10,
                          Text(
                            data.cusname.toString(),
                            style: whiteHeadStyle,
                          ),
                          Text(
                            '₹${data.totalpaidamount?.toStringAsFixed(2) ?? ''}',
                            style: GoogleFonts.montserrat(
                                fontSize: 18, color: Colors.white),
                          ),
                          h10,
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Bill no: ${data.custominvno}',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14, color: Colors.white),
                                ),
                                Text(
                                  'Date: ${formatDate(data.invoicedate.toString().substring(0, 10))}',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14, color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    h10,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Paid by ',
                                style:
                                    GoogleFonts.montserrat(color: Colors.black),
                              ),
                              Text(data.paidby.toString().toUpperCase()),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Status : ',
                                style:
                                    GoogleFonts.montserrat(color: Colors.black),
                              ),
                              Text(data.creditOrCleared
                                  .toString()
                                  .toUpperCase()),
                            ],
                          ),
                          Column(
                            children: List.generate(
                                state.billItems.length,
                                (index) => ListTile(
                                    onLongPress: () {
                                      // showModalBottomSheet(
                                      //   context: context,
                                      //   builder: (context) => BSheet(
                                      //     rate: '${state.taxInRate[index]}',
                                      //     itemName: state.items[index],
                                      //     index: index,
                                      //   ),
                                      // );
                                    },
                                    // leading: Container(
                                    //   width: 50,
                                    //   height: 50,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(6),
                                    //     color: Colors.black,
                                    //   ),
                                    // ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 0),
                                    title: Text(state.billItems[index].pdtname
                                        .toString(), style: GoogleFonts.montserrat(fontWeight: FontWeight.w600,
                                          fontSize: 15, color: const Color.fromARGB(255, 0, 0, 0)),),
                                    subtitle: Text(
                                      '${state.billItems[index].qty} x ${state.billItems[index].ItemUnitSaleRate}',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 12, color: Colors.black),
                                    ),
                                    trailing: Text(
                                      '${(state.billItems[index].qty! * state.billItems[index].ItemUnitSaleRate!).toStringAsFixed(2)}',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16, color: Colors.black),
                                    ))),
                          ),
                          const Divider(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Total',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                      )),
                                  Text(
                                      '₹${data.totalamount!.toStringAsFixed(2)}',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Total tax',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                      )),
                                  Text(
                                      '₹' +
                                          data.totaltaxamount!
                                              .toStringAsFixed(2)
                                              .toString(),
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Discount',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                      )),
                                  Text(
                                      '₹${data.discountamount!.toStringAsFixed(2)}',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                              const Divider(),
                              h15,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Total Amt',
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: 18,
                                      )),
                                  Text(
                                      '₹${(data.totalHavetoPayamount!.toStringAsFixed(2))}',
                                      style: GoogleFonts.montserrat(
                                        color: const Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                              const Divider(),
                              h20,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Total Paid',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18, color: Colors.black)),
                                  Text(
                                      '₹ ${data.totalpaidamount!.toStringAsFixed(3)}',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 18, color: Colors.black)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Balance',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                      )),
                                  Text('₹${data.balance!.toStringAsFixed(2)}',
                                      style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    h20,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                    EdgeInsets.symmetric(vertical: 10)),
                                backgroundColor:
                                    MaterialStateProperty.all(maincolor1)),
                            onPressed: () {
                              showDialog(
                                context: context,
                                barrierDismissible:
                                    false, // This prevents tapping on the background to dismiss the dialog
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    content: Wrap(children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              icon: const Icon(
                                                Icons.close,
                                                weight: 5,
                                              )),
                                          h5,
                                          const Center(
                                              child: Text(
                                            'You want to print this bill ? ',
                                            style: TextStyle(fontSize: 16),
                                          )),
                                          Center(
                                              child: Text(
                                            'Please select a Printing method.',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey),
                                          )),
                                        ],
                                      ),
                                    ]),
                                    actions: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all(
                                                                    maincolor1)),
                                                    onPressed: () {
                                                      BlocProvider.of<BillBloc>(
                                                              context)
                                                          .add(BillPrintt(
                                                              data: data,
                                                              isSunmi: true));
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                        'Print with Sunmi Printer',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .white))),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all(
                                                                    maincolor1)),
                                                    onPressed: () {
                                                      if (isConnected) {
                                                        BlocProvider.of<
                                                                    BillBloc>(
                                                                context)
                                                            .add(BillPrintt(
                                                                data: data,
                                                                isSunmi:
                                                                    false));
                                                        Navigator.pop(context);
                                                      } else {
                                                        Fluttertoast.showToast(
                                                            msg:
                                                                'Please connect to a blutooth device!');
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  ScreenBluetooth(),
                                                            ));
                                                      }
                                                    },
                                                    child: Text(
                                                        'Print with Bluetooth Printer',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .white))),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Text('Print Bill',
                                style: GoogleFonts.montserrat(
                                    fontSize: 18, color: Colors.white))),
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
