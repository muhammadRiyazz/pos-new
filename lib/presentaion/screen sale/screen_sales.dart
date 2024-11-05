import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/application/bill%20submit/bloc/submitbill_bloc.dart';
import 'package:p_o_s/application/checkout/checkout_bloc.dart';
import 'package:p_o_s/application/salesitems/sales_item_bloc.dart';
import 'package:p_o_s/application/customerpart/customerpart_bloc.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/domain/stock/stock_model.dart';
import 'package:p_o_s/presentaion/screen%20bill%20preview/screen_bill_priview.dart';
import 'package:p_o_s/presentaion/screen%20customer/screen_customers_list.dart';
import 'package:p_o_s/presentaion/screen%20home/screen_home.dart';
import 'package:p_o_s/presentaion/screen%20sale/widgets/b_sheet.dart';
import 'package:p_o_s/presentaion/screen%20sale/widgets/counter.dart';
import 'package:p_o_s/widgets/shimmer.dart';
import 'package:page_transition/page_transition.dart';

// class ScreenSales extends StatelessWidget {
//   ScreenSales({super.key});
class ScreenSales extends StatefulWidget {
  const ScreenSales({super.key});

  @override
  State<ScreenSales> createState() => _ScreenSalesState();
}

class _ScreenSalesState extends State<ScreenSales>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;
  bool _isContainer = true; // Flag to track container state
  String selectedCategory = ''; // This will hold the selected category

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _animation =
        Tween<double>(begin: 1.0, end: 0.0) // Adjust values for animation range
            .animate(_controller!);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _handleDrag(DragUpdateDetails details) {
    if (details.primaryDelta! < 0 && _isContainer) {
      // Check for upward drag on container
      _controller?.forward();
      _isContainer = false;
    } else if (details.primaryDelta! > 0 && !_isContainer) {
      // Check for downward drag on sized box
      _controller?.reverse();
      _isContainer = true;
    }
  }

  TextEditingController searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              contentPadding: const EdgeInsets.all(12),
              content: Wrap(children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sure?',
                        style: GoogleFonts.montserrat(fontSize: 16),
                      ),
                      h5,
                      const Text('All the selected items will be lost'),
                    ],
                  ),
                ),
              ]),
              actionsPadding: const EdgeInsets.only(bottom: 0),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('No')),
                      TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ScreenHome(),
                                ),
                                (route) => false);
                            BlocProvider.of<SalesItemBloc>(context)
                                .add(const ClearingToBillList());
                            BlocProvider.of<CustomerpartBloc>(context)
                                .add(const RemoveBiller());
                            BlocProvider.of<SalesItemBloc>(context)
                                .add(ItemsList());
                          },
                          child: const Text('Yes'))
                    ],
                  ),
                )
              ],
            );
          },
        );
        return false;
      },
      child: RefreshIndicator(
        onRefresh: () async {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                contentPadding: const EdgeInsets.all(12),
                content: Wrap(children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sure?',
                          style: GoogleFonts.montserrat(fontSize: 16),
                        ),
                        h5,
                        const Text(
                            'All the selected items will be cleared on refresh'),
                      ],
                    ),
                  ),
                ]),
                actionsPadding: const EdgeInsets.only(bottom: 10),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('No')),
                      TextButton(
                          onPressed: () {
                            selectedCategory = ''; //
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              BlocProvider.of<SalesItemBloc>(context)
                                  .add(const ItemsList());
                              BlocProvider.of<SalesItemBloc>(context)
                                  .add(const ClearingToBillList());
                            });
                            Navigator.pop(context);
                          },
                          child: const Text('Yes'))
                    ],
                  )
                ],
              );
            },
          );
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            // backgroundColor: Colors.white,
            title: const Text(
              'Sales',
              style: TextStyle(color: Colors.white),
            ),
            iconTheme: IconThemeData(color: Colors.white),
          ),
          // appBar: AppBar(
          //   title: const Text('Sales'),
          //   actions: [
          //     BlocBuilder<CustomerpartBloc, CustomerpartState>(
          //       builder: (context, state) {
          //         return InkWell(
          //           onTap: () => Navigator.push(
          //             context,
          //             PageTransition(
          //               duration: const Duration(milliseconds: 250),
          //               type: PageTransitionType.rightToLeft,
          //               child: const ScreenCustomersList(),
          //             ),
          //           ),
          //           child: Row(
          //             crossAxisAlignment: CrossAxisAlignment.end,
          //             children: [
          //               SizedBox(
          //                 width: MediaQuery.of(context).size.width * .5,
          //                 child: Text(
          //                   state.biller == null
          //                       ? 'Select customer'
          //                       : state.biller!.bussinessname,
          //                   textAlign: TextAlign.right,
          //                   style: const TextStyle(
          //                       overflow: TextOverflow.ellipsis,
          //                       color: Colors.white),
          //                 ),
          //               ),
          //               const Icon(Icons.person),
          //             ],
          //           ),
          //         );
          //       },
          //     ),
          //     w10
          //   ],
          // ),
          body: BlocBuilder<SalesItemBloc, SalesItemState>(
            builder: (context, state) {
              return GestureDetector(
                onVerticalDragUpdate: _handleDrag,
                child: Column(
                  children: [
                    // h15,
                    BlocBuilder<CustomerpartBloc, CustomerpartState>(
                      builder: (context, billerState) {
                        return Container(
                          padding: EdgeInsets.all(12),
                          decoration: const BoxDecoration(
                              color: maincolor1,
                              // borderRadius: BorderRadius.all(Radius.circular(30))
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.white)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BlocBuilder<CustomerpartBloc,
                                      CustomerpartState>(
                                    builder: (context, state) {
                                      return InkWell(
                                        onTap: () => Navigator.push(
                                          context,
                                          PageTransition(
                                            duration: const Duration(
                                                milliseconds: 250),
                                            type:
                                                PageTransitionType.rightToLeft,
                                            child: const ScreenCustomersList(),
                                          ),
                                        ),
                                        child: ListTile(
                                          contentPadding: EdgeInsets.all(0),
                                          title: Text(
                                            state.biller == null
                                                ? "Select Customer"
                                                : 'Selected Customer',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          ),
                                          subtitle: Text(
                                            state.biller == null
                                                ? '---- ---- --- ---- ---- ---   👉'
                                                : state.biller!.bussinessname,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                          ),
                                          trailing: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Icon(Icons.storefront),
                                              )),
                                        ),
                                      );
                                    },
                                  ),
                                  w10,

                                  //   Column(
                                  //       crossAxisAlignment: CrossAxisAlignment.start,
                                  //       children: [
                                  //         Text('Total Amount',
                                  //             style: TextStyle(color: Colors.white,fontSize: 13)
                                  //             ),
                                  //         Text(
                                  //             '₹ ${calculateTotalSum(state.toBillItems)}',
                                  //               style: TextStyle(color: Colors.white,fontSize: 20)),
                                  //       ],
                                  //     ),
                                  // h15,
                                  h10,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Total Amount',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13)),
                                          Text(
                                              '₹ ${calculateTotalSum(state.toBillItems)}',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                  fontSize: 22)),
                                        ],
                                      ),
                                      h20,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'No. of Products',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13),
                                          ),
                                          Text(
                                              state.toBillItems.length
                                                  .toString(),
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 22))
                                        ],
                                      )
                                    ],
                                  ),
                                  h20,
                                  BlocConsumer<CheckoutBloc, CheckoutState>(
                                    listener: (context, sstate) {
                                      if (sstate.outodstock == 1) {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) =>
                                              ScreenBillPreview(
                                            from: 0,
                                          ),
                                        ));
                                      } else if (sstate.outodstock == 2) {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return StatefulBuilder(
                                              builder: (context, setState) {
                                                return Dialog(
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 5),
                                                    constraints: BoxConstraints(
                                                        maxHeight: sstate
                                                                    .outofstocklist
                                                                    .length <=
                                                                2
                                                            ? MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                0.25
                                                            : sstate.outofstocklist
                                                                        .length <=
                                                                    4
                                                                ? MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.4
                                                                : sstate.outofstocklist
                                                                            .length <=
                                                                        6
                                                                    ? MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        0.6
                                                                    : MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        0.6),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                            height:
                                                                10), // Instead of h10
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      17),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                'Out of Stock',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                              SizedBox(),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      17),
                                                          child: Divider(),
                                                        ),
                                                        h10,
                                                        Flexible(
                                                          child: sstate
                                                                  .outofstocklist
                                                                  .isNotEmpty
                                                              ? ListView
                                                                  .builder(
                                                                  shrinkWrap:
                                                                      true,
                                                                  itemCount: sstate
                                                                      .outofstocklist
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return ListTile(
                                                                      trailing:
                                                                          Text(
                                                                        '${sstate.outofstocklist[index].vanstock}\nunits only',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                10,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color: Colors.red),
                                                                      ),
                                                                      title:
                                                                          Text(
                                                                        sstate
                                                                            .outofstocklist[index]
                                                                            .pdtname,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                15,
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      ),
                                                                    );
                                                                  },
                                                                )
                                                              : Center(
                                                                  child: Text(
                                                                      'No items out of stock'),
                                                                ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      }
                                    },
                                    builder: (context, sstate) {
                                      return sstate.isLoading
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 24),
                                              child: LinearProgressIndicator(
                                                color: Colors.white,
                                                backgroundColor: maincolor1,
                                                minHeight: 2,
                                              ),
                                            )
                                          : ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(35),
                                                ),
                                                minimumSize: Size(
                                                    double.infinity,
                                                    45), // Full width button
                                              ),
                                              onPressed: () {
                                                billerState.biller == null
                                                    ? Fluttertoast.showToast(
                                                        msg:
                                                            'Please select a Customer')
                                                    : state.toBillItems.isEmpty
                                                        ? Fluttertoast.showToast(
                                                            msg:
                                                                'Please add a product to Bill')
                                                        : BlocProvider.of<
                                                                    CheckoutBloc>(
                                                                context)
                                                            .add(CheckoutEvent
                                                                .checkout(
                                                                    selectedstock:
                                                                        state
                                                                            .toBillItems));
                                                ;

                                                if (billerState.biller !=
                                                    null) {
                                                  BlocProvider.of<
                                                              SubmitbillBloc>(
                                                          context)
                                                      .add(Listing(
                                                          list: state
                                                              .toBillItems));

                                                  BlocProvider.of<
                                                              SubmitbillBloc>(
                                                          context)
                                                      .add(OutstandingCredit(
                                                          cusid: billerState
                                                              .biller!.cusid!));

                                                  BlocProvider.of<
                                                              SubmitbillBloc>(
                                                          context)
                                                      .add(AddDiscount(
                                                          dicountamt: 0.00,
                                                          selectedstocklist:
                                                              state
                                                                  .toBillItems));
                                                } else {
                                                  null;
                                                }
                                              },
                                              child: Text('Settle'),
                                            );
                                    },
                                  ),h10
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    h10,

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              // Container(
                              //   decoration: BoxDecoration(
                              //       border:
                              //           Border.all(color: Colors.black45),
                              //       borderRadius:
                              //           BorderRadius.circular(10)),

                              //   child: DropdownButtonHideUnderline(
                              //     child: Padding(
                              //       padding: const EdgeInsets.symmetric(
                              //           vertical: 0, horizontal: 0),
                              //       child: DropdownButton(
                              //         padding: const EdgeInsets.all(0),
                              //         hint: Padding(
                              //           padding: const EdgeInsets.only(
                              //               left: 7.0),
                              //           child: Text(
                              //             state.selectedCata == ''
                              //                 ? 'All Catagory'
                              //                 : state.selectedCata,
                              //             style: const TextStyle(
                              //                 overflow:
                              //                     TextOverflow.ellipsis),
                              //           ),
                              //         ),
                              //         items: state.cata.map((item) {
                              //           log('selected cata   >>${state.selectedCata}  <<<');
                              //           return DropdownMenuItem(
                              //             onTap: () {
                              //               // stateId =
                              //               //     item['id'].toString();
                              //               // getDistrict(stateId);
                              //               // //  onTap: () {
                              //               //   model = model.copyWith(
                              //               //       franchise: item['id'].toString());
                              //               // },
                              //               // copywith fuction have to be called when the call back is given......
                              // BlocProvider.of<SalesItemBloc>(
                              //         context)
                              //     .add(SearchItem(
                              //         cata: item.pdtfilter
                              //             .toString(),
                              //         query: searchcontroller
                              //             .text
                              //             .toString()));
                              //             },
                              //             value: '',
                              //             child: SizedBox(
                              //               width: MediaQuery.of(context)
                              //                       .size
                              //                       .width *
                              //                   .27,
                              //               child: Padding(
                              //                 padding:
                              //                     const EdgeInsets.all(0.0),
                              //                 child: Text(
                              //                     item.pdtfilter.toString(),
                              //                     style: const TextStyle(
                              //                         overflow: TextOverflow
                              //                             .ellipsis)),
                              //               ),
                              //             ),
                              //           );
                              //         }).toList(),
                              //         onChanged: (newVal) {
                              //           // setState(() {
                              //           //   widget.selectedDistrict = newVal.toString();
                              //           // });
                              //         },
                              //         // value: selectState,
                              //       ),
                              //     ),
                              //   ),
                              // ),

                              Expanded(
                                flex: 6,
                                child: TextFormField(
                                  controller: searchcontroller,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(5),
                                    prefixIcon: const Icon(Icons.search),
                                    hintText: 'Search Item',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(31, 59, 59, 59)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(31, 59, 59, 59)),
                                    ),
                                  ),
                                  onChanged: (value) {
                                    BlocProvider.of<SalesItemBloc>(context).add(
                                        SearchItem(
                                            query: value,
                                            cata: state.selectedCata));
                                  },
                                ),
                              ),
                              w5,
//                               Expanded(
//   child: Container(
//     decoration: BoxDecoration(
//       border: Border.all(color: Colors.black45),
//       borderRadius: BorderRadius.circular(10),
//     ),
//     child: DropdownButtonHideUnderline(
//       child: Padding(
//         padding: const EdgeInsets.all(0),
//         child: DropdownButton<String>(
//           icon: Padding(
//             padding: const EdgeInsets.only(right: 13),
//             child: Icon(Icons.filter_list_outlined),
//           ),
//           isExpanded: true, // This makes the dropdown take the full width
//           items: state.cata.map((item) {
//             return DropdownMenuItem<String>(
//               value: item.id.toString(),
//               child: Container(
//                 width: double.infinity, // This makes the dropdown item full-width
//                 color: selectedCata == item.id.toString()
//                     ? Colors.blue.shade100
//                     : Colors.transparent, // Highlight selected item
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     item.pdtfilter.toString(),
//                     style: const TextStyle(
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           }).toList(),
//           onChanged: (newVal) {
//             setState(() {
//               selectedCata = newVal!;
//             });
//             // Add any additional actions here
//           },
//         ),
//       ),
//     ),
//   ),
// ),

                              Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black45),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: IconButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          // List<String> categories = ['Category 1', 'Category 2', 'Category 3', 'Category 4'];

                                          return StatefulBuilder(
                                            builder: (context, setState) {
                                              return Dialog(
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 5),
                                                  width: double.infinity,
                                                  constraints: BoxConstraints(
                                                    maxHeight: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .height *
                                                        0.6, // Control the height of the dialog
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      h10,
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 17),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Select Category',
                                                              style: TextStyle(
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                            ),
                                                            Icon(Icons
                                                                .filter_list_outlined)
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 17),
                                                        child: Divider(),
                                                      ),
                                                      Expanded(
                                                        child: ListView.builder(
                                                          shrinkWrap: true,
                                                          itemCount:
                                                              state.cata.length,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return GestureDetector(
                                                              onTap: () {
                                                                Navigator.pop(
                                                                    context);
                                                                setState(() {
                                                                  selectedCategory = state
                                                                      .cata[
                                                                          index]
                                                                      .id
                                                                      .toString(); // Update selected category
                                                                });
                                                                BlocProvider.of<SalesItemBloc>(context).add(SearchItem(
                                                                    cata: state
                                                                        .cata[
                                                                            index]
                                                                        .pdtfilter
                                                                        .toString(),
                                                                    query: searchcontroller
                                                                        .text
                                                                        .toString()));
                                                              },
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .symmetric(
                                                                        vertical:
                                                                            5),
                                                                child: Row(
                                                                  children: [
                                                                    Radio<
                                                                        String>(
                                                                      value: state
                                                                          .cata[
                                                                              index]
                                                                          .id
                                                                          .toString(),
                                                                      groupValue:
                                                                          selectedCategory,
                                                                      onChanged:
                                                                          (String?
                                                                              value) {
                                                                        setState(
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                          selectedCategory =
                                                                              value!; // Update selected category

                                                                          BlocProvider.of<SalesItemBloc>(context).add(SearchItem(
                                                                              cata: state.cata[index].pdtfilter.toString(),
                                                                              query: searchcontroller.text.toString()));
                                                                        });
                                                                        // Logic on selection
                                                                        // BlocProvider.of<SalesItemBloc>(context).add(
                                                                        //   SearchItem(cata: categories[index]), // Add your event here
                                                                        // );
                                                                      },
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        state
                                                                            .cata[index]
                                                                            .pdtfilter
                                                                            .toString(),
                                                                        style:
                                                                            const TextStyle(
                                                                          fontSize:
                                                                              16,
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                    icon: Icon(Icons.filter_list_outlined),
                                  ))
                            ],
                          ),
                          state.toBillItems.isEmpty ? const SizedBox() : h10,
                          state.toBillItems.isEmpty
                              ? const SizedBox()
                              : ExpansionTile(
                                  childrenPadding: EdgeInsets.all(10),
                                  dense: true,
                                  collapsedShape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side: const BorderSide(
                                          color: Colors.black, width: .5)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side: const BorderSide(
                                          color: Colors.black, width: .5)),
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 255, 255),
                                  tilePadding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  title: Text(
                                      'Selected Items (${state.toBillItems.length})'),
                                  children: [
                                      SingleChildScrollView(
                                        child: Container(
                                          width: double.infinity,
                                          constraints: BoxConstraints(
                                            maxHeight: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3, // Set a max height if list is too long
                                          ),
                                          child: ListView.builder(
                                            itemCount: state.toBillItems.length,
                                            itemBuilder: (context, index) =>
                                                Column(
                                                  children: [
                                                    ListTile(
                                                        onLongPress: () {
                                                          showModalBottomSheet(
                                                            context: context,
                                                            builder: (context) =>
                                                                BSheet(
                                                              from: 0,
                                                              qty: state
                                                                  .toBillItems[
                                                                      index]
                                                                  .count,
                                                              product:
                                                                  state.toBillItems[
                                                                      index],
                                                              rate: state
                                                                  .toBillItems[
                                                                      index]
                                                                  .saleamntwithtax,
                                                              itemName: state
                                                                  .toBillItems[
                                                                      index]
                                                                  .pdtname,
                                                              id: state
                                                                  .toBillItems[
                                                                      index]
                                                                  .id,
                                                            ),
                                                          );
                                                        },
                                                        // leading: Container(
                                                        //   width: 50,
                                                        //   height: 50,
                                                        //   decoration: BoxDecoration(
                                                        //     borderRadius:
                                                        //         BorderRadius
                                                        //             .circular(6),
                                                        //     color: maincolor1,
                                                        //   ),
                                                        // ),
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 12,
                                                                vertical: 0),
                                                        title: Text(state
                                                            .toBillItems[index]
                                                            .pdtname
                                                            .toString()),
                                                        subtitle: Text(
                                                          // state.index == index &&
                                                          //         state.index != null &&
                                                          //         state.qty != 0
                                                    
                                                          state.toBillItems[index]
                                                                      .count !=
                                                                  0
                                                              ? '(MRP- ₹${state.toBillItems[index].itemMrp}) ₹${state.toBillItems[index].saleamntwithtax} x ${state.toBillItems[index].count} = ${state.toBillItems[index].saleamntwithtax * state.toBillItems[index].count}'
                                                              : '(MRP- ₹${state.toBillItems[index].itemMrp}) ₹${state.toBillItems[index].saleamntwithtax}',
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  fontSize: 12,
                                                                  color:
                                                                      maincolor1),
                                                        ),
                                                        trailing: SizedBox(
                                                          width:
                                                              MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  .25,
                                                          child: QuantityCounter(
                                                            from: 0,
                                                            item: state
                                                                .toBillItems[index],
                                                          ),
                                                        )),Divider(height: 2,)
                                                  ],
                                                ),
                                          ),
                                        ),
                                      )
                                    ]),
                        ],
                      ),
                    ),

                    // state.toBillItems.isEmpty
                    //     ? SizedBox()
                    //     : Padding(
                    //         padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    //         child: Row(
                    //           crossAxisAlignment: CrossAxisAlignment.center,
                    //           children: [
                    //             Text(
                    //               'Selected Items',
                    //               style: GoogleFonts.dmSerifDisplay(fontSize: 14),
                    //             ),
                    //             w5,
                    //             Expanded(
                    //               child: Container(
                    //                 height: 1,
                    //                 color: Colors.black12,
                    //               ),
                    //             ),
                    //             w10,
                    //             Text('(${state.toBillItems.length.toString()})')
                    //           ],
                    //         ),
                    //       ),

                    //     : Column(
                    //         children:),

                    Expanded(
                      child: state.isLoading
                          ? const ListShimmer()
                          : state.items.isEmpty
                              ? ListView(children: const [
                                  h20,
                                  h20,
                                  h20,
                                  h20,
                                  Center(child: Text('No data')),
                                ])
                              : GestureDetector(
                                  onVerticalDragUpdate: (details) {
                                    log(details.globalPosition.toString());
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: ListView.builder(
                                        itemCount: state.items.length,
                                        itemBuilder: (context, index) {
                                          // log('   >>>>>>>  taxInRate' +
                                          //     state.taxInRate[index].toString());
                                          // log('   >>>>>>>  tempmrp' + state.tempMrp.toString());

                                          return Column(
                                            children: [
                                              ListTile(
                                                onLongPress: () {
                                                  BlocProvider.of<CheckoutBloc>(
                                                          context)
                                                      .add(Vanstockcheck(
                                                          productid: state
                                                              .items[index]
                                                              .codeorSku));
                                                  showModalBottomSheet(
                                                    context: context,
                                                    builder: (context) => BSheet(
                                                      from: 0,
                                                      qty: state.items[index].count,
                                                      product: state.items[index],
                                                      rate: state.items[index]
                                                          .saleamntwithtax,
                                                      itemName: state
                                                          .items[index].pdtname,
                                                      id: state.items[index].id,
                                                    ),
                                                  );
                                                },
                                                // leading: Container(
                                                //   width: 50,
                                                //   height: 50,
                                                //   decoration: BoxDecoration(
                                                //     borderRadius:
                                                //         BorderRadius.circular(6),
                                                //     color: maincolor1,
                                                //   ),
                                                // ),
                                              
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 0, vertical: 0),
                                                title: Text(
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 15),
                                                    state.items[index].pdtname
                                                        .toString()),
                                                subtitle: Text(
                                                  // state.index == index &&
                                                  //         state.index != null &&
                                                  //         state.qty != 0
                                                  // ? '(MRP- ₹${state.mrp[index]}) ₹${state.taxInRate[index].toString()} x ${state.qty} =  ${int.parse(state.taxInRate[index]) * state.qty}/-'
                                                  state.items[index].count != 0
                                                      ? '( MRP- ₹ ${state.items[index].itemMrp} ) ₹ ${state.items[index].saleamntwithtax} x ${state.items[index].count} = ${state.items[index].saleamntwithtax * state.items[index].count}'
                                                      : '( MRP- ₹ ${state.items[index].itemMrp} ) ₹ ${state.items[index].saleamntwithtax}',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 13,fontWeight: FontWeight.w600,
                                                      color: maincolor1),
                                                ),
                                                trailing: SizedBox(
                                                  child: QuantityCounter(
                                                    from: 0,
                                                    item: state.items[index],
                                                  ),
                                                ),
                                              ),
                                              Divider(height: 2,)
                                            ],
                                          );
                                        }),
                                  ),
                                ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  double calculateTotalSum(List<Stocklist> items) {
    double sum = 0.0;
    for (var item in items) {
      sum += item.saleamntwithtax * item.count;
    }
    return sum;
  }
}
