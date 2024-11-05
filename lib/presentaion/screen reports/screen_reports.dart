import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:p_o_s/application/report/bloc/report_bloc.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/infrastructure/dateformate.dart';

import 'package:p_o_s/widgets/drawer.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

// class ScreenReports extends StatelessWidget {
//   const ScreenReports({super.key});
class ScreenReports extends StatefulWidget {
  const ScreenReports({super.key});

  @override
  State<ScreenReports> createState() => _ScreenReportsState();
}

class _ScreenReportsState extends State<ScreenReports> {
  String _selectedDate = '';
  String _dateCount = '';
  String selectedStartDate = '';
  String selectedEndDate = '';
  String _rangeCount = '';
  _onSelectionChanged(
    DateRangePickerSelectionChangedArgs args,
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
        // BlocProvider.of<BillBloc>(context).add(SortBills(
        //     cusId: cusId,
        //     cusname: cusnamem,
        //     sDate: DateTime.parse(selectedStartDate),
        //     eDate: DateTime.parse(selectedEndDate)));

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
     
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Reports'),
          actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                selectedStartDate != ''
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'From : ${formatDate(selectedStartDate)} ',
                            style: GoogleFonts.montserrat(
                                fontSize: 10, color: Colors.white),
                          ),
                          Text(
                            'To : ${formatDate(selectedEndDate)}',
                            style: GoogleFonts.montserrat(
                                fontSize: 10, color: Colors.white),
                          )
                        ],
                      )
                    : SizedBox(),
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
                                    selectionTextStyle:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    rangeTextStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    onSelectionChanged:
                                        (dateRangePickerSelectionChangedArgs) {
                                      _onSelectionChanged(
                                          dateRangePickerSelectionChangedArgs);
                                    },
                                    selectionMode:
                                        DateRangePickerSelectionMode.range,
                                    initialSelectedRange: PickerDateRange(
                                        DateTime.now()
                                            .subtract(const Duration(days: 4)),
                                        DateTime.now()
                                            .add(const Duration(days: 3))),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          BlocProvider.of<ReportBloc>(context)
                                              .add(ReportEvent.fetch(
                                                  sDate: selectedStartDate,
                                                  eDate: selectedEndDate));
                                          BlocProvider.of<ReportBloc>(context)
                                              .add(ReportEvent.fetchReturns(
                                                  sDate: selectedStartDate,
                                                  eDate: selectedEndDate));
                                                  Navigator.pop(context);
                                        },
                                        child: Text('Done'))
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
          bottom: TabBar(
              unselectedLabelColor: Colors.black45,
              indicatorColor: Colors.white,
              




              
              physics: const BouncingScrollPhysics(),
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Color.fromARGB(255, 255, 255, 255),
              indicator: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: maincolor1),
              labelStyle: GoogleFonts.montserrat(
                  fontSize: 15, fontWeight: FontWeight.w500),
              tabs: [
                const Tab(text: 'Sales'),
                const Tab(text: 'Sales Return'),
              ]),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                  child: TabBarView(children: [
                RefreshIndicator(onRefresh: () async{
                    BlocProvider.of<ReportBloc>(context)
      .add( FetchTotalSaleReports(eDate: selectedEndDate, sDate: selectedStartDate));
          BlocProvider.of<ReportBloc>(context)
      .add( FetchTotalSaleReturnReports(eDate: selectedEndDate, sDate: selectedStartDate));
                },
                  child: BlocBuilder<ReportBloc, ReportState>(
                    builder: (context, state) {
                      return state.isLoading
                          ? const Center(
                              child: CircularProgressIndicator(
                              color: maincolor1,
                              backgroundColor: Colors.transparent,
                              strokeWidth: 1,
                            ))
                          : state.rBillList.isEmpty
                              ? ListView(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(top: 150),
                                    child: Center(
                                        child: Text('Empty'),
                                      ),
                                  ),
                                ],
                              )
                              : ListView.builder(
                                  itemCount: state.rBillList.length,
                                  itemBuilder: (context, index) => ListTile(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 0),
                                    title:
                                        Text('${state.rBillList[index].cusname} (${state.rBillList[index].custominvno})'),
                                    subtitle: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.calendar_today_rounded,size:10),
                                        w5,
                                        Text( formatDate(state.rBillList[index].invoicedate
                                                  .toString()
                                                  .substring(0, 10)),
                                          ),
                                      ],
                                    ),
                                    trailing: Text(
                                      '₹${state.rBillList[index].totalHavetoPayamount}',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14),
                                    ),
                                  ),
                                );
                    },
                  ),
                ),
                RefreshIndicator(onRefresh: () async{
                  BlocProvider.of<ReportBloc>(context)
      .add( FetchTotalSaleReports(eDate: selectedEndDate, sDate: selectedStartDate));
          BlocProvider.of<ReportBloc>(context)
      .add( FetchTotalSaleReturnReports(eDate: selectedEndDate, sDate: selectedStartDate));
                },
                  child: BlocBuilder<ReportBloc, ReportState>(
                    builder: (context, state) {
                      return state.isLoading
                          ? const Center(
                              child: CircularProgressIndicator(
                              color: maincolor1,
                              backgroundColor: Colors.transparent,
                              strokeWidth: 1,
                            ))
                          : state.rBillReturnList.isEmpty
                              ? ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 150),
                                    child: Center(
                                        child: Text('Empty'),
                                      ),
                                  ),
                                ],
                              )
                              : ListView.builder(
                                  itemCount: state.rBillReturnList.length,
                                  itemBuilder: (context, index) => ListTile(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 0),
                                    title: Text(
                                        '${state.rBillReturnList[index].cusname}'),
                                    subtitle: Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_today_rounded,
                                          size: 10,
                                        ),
                                        Text(formatDate(state.rBillReturnList[index].invoicedate
                                                  .toString()
                                                  .substring(0, 10)),
                                           ),
                                      ],
                                    ),
                                    trailing: Text(
                                      '₹${state.rBillReturnList[index].totalHavetoPayamount}',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 14),
                                    ),
                                  ),
                                );
                    },
                  ),
                ),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
