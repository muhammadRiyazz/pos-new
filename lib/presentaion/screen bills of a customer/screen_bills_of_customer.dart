import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:p_o_s/application/bills/bloc/bill_bloc.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/domain/viewbill%20model/view_bill_model.dart';
import 'package:p_o_s/infrastructure/dateformate.dart';
import 'package:p_o_s/presentaion/screen%20bill%20details/screen_bill_details.dart';
import 'package:p_o_s/presentaion/screen%20customer/customer_list_for_billview.dart';
import 'package:p_o_s/widgets/from_to_date_picker.dart';
import 'package:p_o_s/widgets/shimmer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

// class ScreenViewBills extends StatelessWidget {
//   const ScreenViewBills({
//     super.key,
//   });
//   // final String name;
class ScreenViewBills extends StatefulWidget {
  const ScreenViewBills({super.key});

  @override
  State<ScreenViewBills> createState() => _ScreenViewBillsState();
}

class _ScreenViewBillsState extends State<ScreenViewBills> {
  @override
  String _selectedDate = '';
  String _dateCount = '';
  String selectedStartDate = '';
  String selectedEndDate = '';
  String _rangeCount = '';
  _onSelectionChanged(
    DateRangePickerSelectionChangedArgs args,
    String? cusId,
    String? cusnamem,
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

  final searchController = TextEditingController();

  Widget build(BuildContext context) {
    return BlocBuilder<BillBloc, BillState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            BlocProvider.of<BillBloc>(context).add(const ClearingSort());
            return true;
          },
          child: RefreshIndicator(
            onRefresh: () async {
              if (state.selectedEdate == null || state.selectedSdate == null) {
                BlocProvider.of<BillBloc>(context).add(const FetchBill());
              } else {
                BlocProvider.of<BillBloc>(context).add(SortBills(
                    cusId: '',
                    cusname: '',
                    sDate: DateTime.parse(selectedStartDate),
                    eDate: DateTime.parse(selectedEndDate)));
              }
              if (searchController.text != '') {
                searchController.text = '';
              }
            },
            child: Scaffold(
              appBar: AppBar(
                title: Text("View Bills"),
                actions: [
                  // IconButton(
                  //     onPressed: () {
                  //       Navigator.push(context, MaterialPageRoute(
                  //         builder: (context) {
                  //           return CustomersList(
                  //            edate: state.selectedEdate,
                  //             sdate: state.selectedSdate,
                  //           );
                  //         },
                  //       ));
                  //     },
                  //     icon: const Icon(Icons.person)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      state.selectedEdate == null || state.selectedSdate == null
                          ? SizedBox()
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'From : ${formatDate(state.selectedSdate.toString().substring(0, 10))}',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 10, color: Colors.white),
                                ),
                                Text(
                                  'To : ${formatDate(state.selectedEdate.toString().substring(0, 10))}',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 10, color: Colors.white),
                                )
                              ],
                            ),
                      IconButton(
                          onPressed: () {
                            searchController.text = '';
                            log('message');
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
                                          selectionTextStyle: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                          rangeTextStyle: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          onSelectionChanged:
                                              (dateRangePickerSelectionChangedArgs) {
                                            _onSelectionChanged(
                                              dateRangePickerSelectionChangedArgs,
                                              state.selectedCusId,
                                              state.selectedCus,
                                            );
                                          },
                                          selectionMode:
                                              DateRangePickerSelectionMode
                                                  .range,
                                          initialSelectedRange: PickerDateRange(
                                              DateTime.now().subtract(
                                                  const Duration(days: 4)),
                                              DateTime.now().add(
                                                  const Duration(days: 3))),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                BlocProvider.of<BillBloc>(
                                                        context)
                                                    .add(SortBills(
                                                        cusId: '',
                                                        cusname: '',
                                                        sDate: DateTime.parse(
                                                            selectedStartDate),
                                                        eDate: DateTime.parse(
                                                            selectedEndDate)));
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
                          icon: const Icon(Icons.calendar_month_outlined)),
                    ],
                  )
                ],
              ),
              body: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: searchController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      searchController.text = '';

                                      BlocProvider.of<BillBloc>(context).add(
                                          SearchBill(
                                              query: '',
                                              searchList: state.bills));
                                      // ..
                                    },
                                    icon: Icon(Icons.close)),
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                prefixIcon: const Icon(Icons.search),
                                hintText: 'Bill No, Name, Phone ',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:
                                      const BorderSide(color: Colors.black12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide:
                                      const BorderSide(color: maincolor1),
                                ),
                              ),
                              onChanged: (value) {
                                BlocProvider.of<BillBloc>(context).add(
                                    SearchBill(
                                        query: value.toString(),
                                        searchList: state.bills));
                              },
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                          //   child: Container(
                          //                               decoration: BoxDecoration(
                          //                                                                 borderRadius: BorderRadius.circular(10.0),

                          //                                 border: Border.all()),

                          //     child: IconButton(onPressed: (){     BlocProvider.of<BillBloc>(context).add(SearchBill(
                          //           query: searchController.text.toString(), searchList: state.bills));}, icon: Icon(Icons.search))),
                          // )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          state.selectedCus == null ||
                                  state.selectedCusId == null
                              ? SizedBox()
                              : Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: maincolor1.withOpacity(.25),
                                      border: Border.all(color: maincolor1)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () =>
                                              BlocProvider.of<BillBloc>(context)
                                                  .add(ClearingSort()),
                                          child: const Icon(
                                            Icons.highlight_remove_rounded,
                                            size: 20,
                                            color: maincolor1,
                                          ),
                                        ),
                                        w5,
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          child: Text(
                                            state.selectedCus.toString(),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        ],
                      ),
                      Expanded(
                          child: state.isLoading
                              ? const ListShimmer()
                              : state.bills.isEmpty
                                  ? ListView(children: const [
                                      h20,
                                      h20,
                                      h20,
                                      h20,
                                      Center(child: Text('No data')),
                                    ])
                                  : ListView.builder(
                                      itemCount: state.bills.length,
                                      itemBuilder: (context, index) => ListTile(
                                          onTap: () {
                                            BlocProvider.of<BillBloc>(context)
                                                .add(FetchBillProducts(
                                                    invoiceNo: state
                                                        .bills[index]
                                                        .custominvno
                                                        .toString()));
                                            Navigator.push(
                                                context,
                                                PageTransition(
                                                  duration: const Duration(
                                                      milliseconds: 250),
                                                  type: PageTransitionType
                                                      .rightToLeft,
                                                  child: ScreenBillDetails(
                                                    data: state.bills[index],
                                                  ),
                                                ));
                                          },
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          leading: CircleAvatar(
                                            child: Text(state
                                                .bills[index].customerType!,style: TextStyle(fontSize: 10),),
                                          ),
                                          title: Row(
                                            children: [
                                              Text(
                                                  "Bill: ${state.bills[index].custominvno}"),
                                            ],
                                          ),
                                          subtitle: Row(children: [
                                            const Icon(
                                              Icons.calendar_month,
                                              size: 12,
                                            ),
                                            w5,
                                            Text(
                                              formatDate(state
                                                  .bills[index].invoicedate
                                                  .toString()
                                                  .substring(0, 10)),
                                            )
                                          ]),
                                          trailing: Text(
                                            '₹${state.bills[index].totalHavetoPayamount}',
                                            style: GoogleFonts.montserrat(
                                                color: maincolor1,
                                                fontSize: 16),
                                          )),
                                    )),
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }
}
