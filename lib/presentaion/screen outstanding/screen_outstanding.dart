import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:p_o_s/application/accounts/bloc/accounts_bloc.dart';
import 'package:p_o_s/application/accounts/payment%20bloc/payment_bloc.dart';
import 'package:p_o_s/commons/profile_varibles.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/domain/customers/customers_list.dart';
import 'package:p_o_s/infrastructure/dateformate.dart';
import 'package:p_o_s/infrastructure/dating.dart';
import 'package:p_o_s/presentaion/blutooth%20connectivity/bluetooth.dart';
import 'package:p_o_s/presentaion/screen%20outstanding/widgets/b_sheet_outstanding_pay.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

// class ScreenOutstanding extends StatelessWidget {
//   const ScreenOutstanding(
//       {super.key, required this.id, required this.customerName});
class ScreenOutstanding extends StatefulWidget {
  ScreenOutstanding({super.key, required this.customer});
  final Customerslist customer;

  @override
  State<ScreenOutstanding> createState() => _ScreenOutstandingState();
}

class _ScreenOutstandingState extends State<ScreenOutstanding> {
  String _selectedDate = '';
  String _dateCount = '';
  String _rangeCount = '';
  String selectedStartDate = '';
  String selectedEndDate = '';
  @override
  void initState() {
    selectedStartDate = DateTime.now()
        .subtract(Duration(days: DateTime.now().day - 1))
        .toString()
        .substring(0, 10);
    selectedEndDate = DateTime.now().toString().substring(0, 10);
    BlocProvider.of<AccountsBloc>(context).add(OutStandingCreditOpngClsg(
        cusid: widget.customer.cusid!,
        eDate: DateTime.now().toString().substring(0, 10),
        sDate: getLastMonthFormattedDate().toString()));
    BlocProvider.of<AccountsBloc>(context).add(FetchAccounts(
        cusId: widget.customer.cusid!,
        eDate: DateTime.now().toString().substring(0, 10),
        sDate: getLastMonthFormattedDate().toString()));
    BlocProvider.of<AccountsBloc>(context).add(OpeningBal(
      cusid: widget.customer.cusid!,
      sDate: getLastMonthFormattedDate().toString(),
    ));
    BlocProvider.of<AccountsBloc>(context).add(ClosingBal(
        cusid: widget.customer.cusid!,
        eDate: DateTime.now().toString().substring(0, 10)));

    super.initState();
  }

  _onSelectionChanged(
    DateRangePickerSelectionChangedArgs args,
    String? cusId,
  ) {
    // if (selectedStartDate != "" && selectedEndDate != "") {
    setState(() {
      log('_selectedDate $selectedStartDate');
      // print('_dateCount $_dateCount');
      // print('_range $_startDate');
      log('enddate $selectedEndDate');
      // print('_rangeCount $_rangeCount');
      if (args.value is PickerDateRange) {
        selectedStartDate = DateFormat('yyyy-MM-dd')
            .format(args.value.startDate)
            .characters
            .take(10)
            .toString();
        // ignore: lines_longer_than_80_chars
        selectedEndDate = DateFormat('yyyy-MM-dd')
            .format(args.value.endDate ?? args.value.startDate)
            .characters
            .take(10)
            .toString();
        log('Starting from $selectedStartDate , ending to $selectedEndDate');

        // _future =
        //     ReportApi().getLedgerReport(fromDate: _startDate, toDate: _endDate);
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<PaymentBloc>(context).add(PaymentEvent.clearprint());
    return RefreshIndicator(
      onRefresh: () async {
        selectedStartDate = DateTime.now()
            .subtract(Duration(days: DateTime.now().day - 1))
            .toString()
            .substring(0, 10);
        selectedEndDate = DateTime.now().toString().substring(0, 10);
        BlocProvider.of<AccountsBloc>(context).add(OutStandingCreditOpngClsg(
            cusid: widget.customer.cusid!,
            eDate: DateTime.now().toString().substring(0, 10),
            sDate: getLastMonthFormattedDate().toString()));
        BlocProvider.of<AccountsBloc>(context).add(FetchAccounts(
            cusId: widget.customer.cusid!,
            eDate: DateTime.now().toString().substring(0, 10),
            sDate: getLastMonthFormattedDate().toString()));
        BlocProvider.of<AccountsBloc>(context).add(OpeningBal(
          cusid: widget.customer.cusid!,
          sDate: getLastMonthFormattedDate().toString(),
        ));
        BlocProvider.of<AccountsBloc>(context).add(ClosingBal(
            cusid: widget.customer.cusid!,
            eDate: DateTime.now().toString().substring(0, 10)));
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.customer.bussinessname),
            actions: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'from: ${formatDate(selectedStartDate)}',
                        style: GoogleFonts.montserrat(
                            fontSize: 12, color: Colors.white),
                      ),
                      Text('to: ${formatDate(selectedEndDate)}',
                          style: GoogleFonts.montserrat(
                              fontSize: 12, color: Colors.white))
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              // elevation: 16,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    child: SfDateRangePicker(
                                      rangeSelectionColor: maincolor2,
                                      endRangeSelectionColor: maincolor1,
                                      startRangeSelectionColor: maincolor1,
                                      todayHighlightColor: maincolor1,
                                      selectionTextStyle: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      rangeTextStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      onSelectionChanged:
                                          (dateRangePickerSelectionChangedArgs) {
                                        _onSelectionChanged(
                                            dateRangePickerSelectionChangedArgs,
                                            widget.customer.cusid!);
                                      },
                                      selectionMode:
                                          DateRangePickerSelectionMode.range,
                                      initialSelectedRange: PickerDateRange(
                                          DateTime.now().subtract(
                                              const Duration(days: 4)),
                                          DateTime.now()
                                              .add(const Duration(days: 3))),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            BlocProvider.of<AccountsBloc>(
                                                    context)
                                                .add(OutStandingCreditOpngClsg(
                                                    cusid:
                                                        widget.customer.cusid!,
                                                    sDate: selectedStartDate,
                                                    eDate: selectedEndDate));
                                            BlocProvider.of<AccountsBloc>(
                                                    context)
                                                .add(FetchAccounts(
                                                    cusId:
                                                        widget.customer.cusid!,
                                                    sDate: selectedStartDate,
                                                    eDate: selectedEndDate));
                                            BlocProvider.of<AccountsBloc>(
                                                    context)
                                                .add(OpeningBal(
                                              cusid: widget.customer.cusid!,
                                              sDate: DateTime.parse(
                                                      selectedStartDate)
                                                  .subtract(
                                                      const Duration(days: 1))
                                                  .toString()
                                                  .substring(0, 10),
                                            ));

                                            BlocProvider.of<AccountsBloc>(
                                                    context)
                                                .add(ClosingBal(
                                                    cusid:
                                                        widget.customer.cusid!,
                                                    eDate: selectedEndDate));
                                            Navigator.pop(context);
                                          },
                                          child: Text('Ok'))
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.calendar_month)),
                ],
              )
            ],
          ),
          body: BlocConsumer<PaymentBloc, PaymentState>(
            listener: (context, state) {
              if (state.isLoading) {
                showDialog(
                  context: context,
                  barrierDismissible:
                      false, // This prevents tapping on the background to dismiss the dialog
                  builder: (BuildContext context) {
                    return WillPopScope(
                        onWillPop: () async {
                          return false;
                        }, // Disable back button

                        child: AlertDialog(
                          content: Wrap(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                h5,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircularProgressIndicator(
                                      color: maincolor1,
                                      strokeWidth: 1.5,
                                    ),
                                  ],
                                ),
                                h5,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                        "Please wait...\nDon't close the application.",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                            color: maincolor1)),
                                  ],
                                )
                              ],
                            ),
                          ]),
                        ));
                  },
                );
              } else if (state.addpayment) {
                log('message------------');
                showDialog(
                  context: context,
                  barrierDismissible:
                      false, // This prevents tapping on the background to dismiss the dialog
                  builder: (BuildContext context) {
                    return WillPopScope(
                      onWillPop: () async {
                        return false;
                      }, // Disable back button

                      child: AlertDialog(
                        content: Wrap(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    BlocProvider.of<AccountsBloc>(context).add(
                                        OutStandingCreditOpngClsg(
                                            cusid: widget.customer.cusid!,
                                            eDate: DateTime.now()
                                                .toString()
                                                .substring(0, 10),
                                            sDate: getLastMonthFormattedDate()
                                                .toString()));
                                    BlocProvider.of<AccountsBloc>(context).add(
                                        FetchAccounts(
                                            cusId: widget.customer.cusid!,
                                            eDate: DateTime.now()
                                                .toString()
                                                .substring(0, 10),
                                            sDate: getLastMonthFormattedDate()
                                                .toString()));
                                    BlocProvider.of<AccountsBloc>(context)
                                        .add(OpeningBal(
                                      cusid: widget.customer.cusid!,
                                      sDate: getLastMonthFormattedDate()
                                          .toString(),
                                    ));
                                    BlocProvider.of<AccountsBloc>(context).add(
                                        ClosingBal(
                                            cusid: widget.customer.cusid!,
                                            eDate: DateTime.now()
                                                .toString()
                                                .substring(0, 10)));
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    weight: 5,
                                  )),
                              const Center(
                                child: CircleAvatar(
                                    backgroundColor: maincolor1,
                                    radius: 30,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.done_rounded,
                                        color: Colors.white,
                                      ),
                                    )),
                              ),
                              h5,
                              const Center(
                                  child: Text(
                                'Success',
                                style: TextStyle(fontSize: 16),
                              )),
                              const Center(
                                  child: Text(
                                'Add Payment Completed',
                                style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
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
                                                MaterialStateProperty.all(
                                                    maincolor1)),
                                        onPressed: () {
                                          BlocProvider.of<PaymentBloc>(context)
                                              .add(
                                                  PaymentEvent.paymentbillprint(
                                                      customer: widget.customer,
                                                      sunmi: true));
                                        },
                                        child: Text('Print with Sunmi Printer',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: Colors.white))),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    maincolor1)),
                                        onPressed: () {
                                          if (isConnected) {
                                            BlocProvider.of<PaymentBloc>(
                                                    context)
                                                .add(PaymentEvent
                                                    .paymentbillprint(
                                                        customer:
                                                            widget.customer,
                                                        sunmi: false));
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
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                color: Colors.white))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .15,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: maincolor1,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      child: BlocConsumer<AccountsBloc, AccountsState>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Total Outstanding',
                                style: whiteHeadStyle,
                              ),
                              state.isAmtsLoading ? h10 : h5,
                              state.isAmtsLoading
                                  ? SizedBox(
                                      width: 50,
                                      child: LinearProgressIndicator(
                                        color: Colors.white,
                                        backgroundColor: Colors.transparent,
                                      ),
                                    )
                                  : Text(
                                      '₹ ${state.outstandingCreditAmt < 0 ? "${state.outstandingCreditAmt.abs().toStringAsFixed(2)} (Debit)" : "${state.outstandingCreditAmt.abs().toStringAsFixed(2)} (Credit)"}',
                                      style: whiteHeadStyle,
                                    ),
                              h20,
                              h20,
                            ],
                          );
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10),
                        child: BlocBuilder<AccountsBloc, AccountsState>(
                          builder: (context, state) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Opening Bal:',
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                    w5,
                                    state.isOpningLoading
                                        ? const SizedBox(
                                            width: 40,
                                            child: LinearProgressIndicator(
                                              minHeight: 1,
                                              color: Colors.white,
                                              backgroundColor:
                                                  Colors.transparent,
                                            ),
                                          )
                                        : Text(
                                            '₹${state.openingAmt.abs().toStringAsFixed(2)}',
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                  ],
                                ),
                                state.isLoading
                                    ? SizedBox()
                                    : TextButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.black12),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ))),
                                        onPressed: () {
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (context) =>
                                                BOutstandingSheet(
                                              outstanding:
                                                  state.outstandingCreditAmt,
                                              outstandingType:
                                                  state.outstandingCreditAmt < 0
                                                      ? "Dr"
                                                      : "Cr",
                                              id: widget.customer.cusid!,
                                              name:
                                                  widget.customer.bussinessname,
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Add Payment',
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white),
                                        )),
                              ],
                            );
                          },
                        ),
                      ),
                    )
                  ]),
                  h10,
                  BlocBuilder<AccountsBloc, AccountsState>(
                    builder: (context, state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          state.isLoading || state.accountsList.isEmpty
                              ? SizedBox()
                              : const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Text('Transaction history'),
                                ),
                          state.isLoading || state.accountsList.isEmpty
                              ? SizedBox()
                              : Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .3,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Cr.',
                                                style:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 14,
                                                        color: Colors.red)),
                                            Text('Dr.           ',
                                                style:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 14,
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 41, 141, 44))),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        ],
                      );
                    },
                  ),
                  Expanded(
                    child: BlocBuilder<AccountsBloc, AccountsState>(
                      builder: (context, state) {
                        return Column(
                          children: [
                            Expanded(
                              child: state.isLoading
                                  ? const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircularProgressIndicator(
                                          color: maincolor1,
                                          backgroundColor: Colors.transparent,
                                        )
                                      ],
                                    )
                                  : state.accountsList.isEmpty
                                      ? ListView(children: const [
                                          h20,
                                          h20,
                                          h20,
                                          h20,
                                          Center(
                                              child: Text('No Transactions')),
                                        ])
                                      : ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          itemCount: state.accountsList.length,
                                          itemBuilder: (context, index) =>
                                              ListTile(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 12,
                                                        vertical: 0),
                                                leading: const CircleAvatar(
                                                  child: Icon(
                                                      Icons.currency_rupee,
                                                      color: Color.fromARGB(
                                                          255, 41, 141, 44)),
                                                ),
                                                title: Text(
                                                  formatDate(state
                                                      .accountsList[index].date
                                                      .toString()
                                                      .substring(0, 10)),
                                                  style: GoogleFonts
                                                      .montserrat(
                                                          fontSize: 18),
                                                ),
                                                subtitle: Text(
                                                  '${state.accountsList[index].decs} ${state.accountsList[index].decs.toString().toLowerCase() == "sale" ? '- ${state.accountsList[index].invNo}' : state.accountsList[index].decs.toString().toLowerCase() == "payment" ? '- ${state.accountsList[index].payOrExpId}' : ''}',
                                                  // 'Paid by: ${state.accountsList[index].paidby}',
                                                  style: GoogleFonts
                                                      .montserrat(
                                                          fontSize: 12,
                                                          color: const Color
                                                              .fromARGB(255, 41,
                                                              141, 44)),
                                                ),
                                                trailing: SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .3,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        // '',
                                                        state.accountsList[index]
                                                                    .type
                                                                    .toString() ==
                                                                'Cr'
                                                            ? '₹${state.accountsList[index].amt}'
                                                            : '',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 14,
                                                                color:
                                                                    Colors.red),
                                                      ),
                                                      Text(
                                                        state.accountsList[index]
                                                                    .type
                                                                    .toString() ==
                                                                'Dr'
                                                            ? '₹${state.accountsList[index].amt}'
                                                            : '',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 14,
                                                                color: const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    41,
                                                                    141,
                                                                    44)),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                            ),
                            BlocBuilder<AccountsBloc, AccountsState>(
                              builder: (context, state) {
                                return Container(
                                  width: double.infinity,
                                  color: maincolor1,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18.0, vertical: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Closing Balance ${state.closingAmt < 0 ? "(Credit)" : '(Debit)'}:-',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                        state.isclosingLoading
                                            ? const SizedBox(
                                                width: 40,
                                                child: LinearProgressIndicator(
                                                  minHeight: 1,
                                                  color: Colors.white,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                ),
                                              )
                                            : Text(
                                                '₹${state.closingAmt.abs()}',
                                                style:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 20,
                                                        color: Colors.white),
                                              )

                                        // Text(
                                        //     '₹ ${state.closingAmt < 0 ? "${state.closingAmt.abs().toStringAsFixed(2)} (Debit)" : "${state.closingAmt.abs().toStringAsFixed(2)} (Credit)"}',
                                        //     style: GoogleFonts.montserrat(
                                        //         color: Colors.white,
                                        //         fontSize: 15),
                                        //   ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            )
                          ],
                        );
                      },
                    ),
                  )
                ],
              );
            },
          )),
    );
  }
}
