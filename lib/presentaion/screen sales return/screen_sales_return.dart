import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/application/bill%20submit/bloc/submitbill_bloc.dart';
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

class ScreenSalesReturn extends StatelessWidget {
  ScreenSalesReturn({
    super.key,
    required this.from,
  });

  TextEditingController searchcontroller = TextEditingController();
  int from;
    String selectedCategory = ''; // This will hold the selected category

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
              actionsPadding: EdgeInsets.only(bottom: 10),
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
                          child: Text('No')),
                      TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ScreenHome(),
                                ),
                                (route) => false);
                            BlocProvider.of<SalesItemBloc>(context)
                                .add(ClearingToBillList());
                            BlocProvider.of<CustomerpartBloc>(context)
                                .add(RemoveBiller());
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
          selectedCategory='';
          WidgetsBinding.instance.addPostFrameCallback((_) {
            BlocProvider.of<SalesItemBloc>(context).add(const ItemsList());
            BlocProvider.of<SalesItemBloc>(context)
                .add(const ClearingToBillList());
          });
        },
        child: Scaffold(backgroundColor: white,
          appBar: AppBar(
            title: Text(
              from == 0 ? 'Sales Return' : 'Estimate',
              style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 14,
                  color: Colors.white),
            ),
           
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: BlocBuilder<SalesItemBloc, SalesItemState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Column(
                      children: [
                        BlocBuilder<CustomerpartBloc, CustomerpartState>(
                          builder: (context, billerState) {
                            return Container(
                              decoration: const BoxDecoration(
                                  color: maincolor1,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.white)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 17.0, vertical: 0),
                                    child: Column(
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
                                        ElevatedButton(
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
                                                        : Navigator.of(context)
                                                            .push(
                                                                MaterialPageRoute(
                                                            builder: (context) =>
                                                                ScreenBillPreview(
                                                              from: from==0? 1:2,
                                                            ),
                                                          ));

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
                                                      .add(AddDiscount(
                                                          dicountamt: 0.00,
                                                          selectedstocklist:
                                                              state
                                                                  .toBillItems));

                                                      //             if (from==0) {
                                                      //               BlocProvider.of<
                                                      //         SubmitbillBloc>(
                                                      //     context)
                                                      // .add(OutstandingCredit(
                                                      //     cusid: billerState
                                                      //             .biller!
                                                      //             .cusid! ??
                                                      //         ''));
                                                      //             } 
                                                  
                                                } else {
                                                  null;
                                                }
                                              },
                                              child: Text('Settle'),
                                            ),h10,
                                        
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        h20,
                        Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            child: SizedBox(
                              height: 45,
                              child: Row(
                                children: [
                                 
                                  Expanded(
                                    child: TextFormField(
                                      controller: searchcontroller,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                        contentPadding: const EdgeInsets.all(5),
                                        prefixIcon: const Icon(Icons.search),
                                        hintText: 'Search Item',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: const BorderSide(
                                              color: Colors.black12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide: const BorderSide(
                                              color: maincolor1),
                                        ),
                                      ),
                                      onChanged: (value) {
                                        BlocProvider.of<SalesItemBloc>(context)
                                            .add(SearchItem(
                                                query: value,
                                                cata: state.selectedCata));
                                      },
                                    ),
                                  ),
                                  w5,
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
                            ),
                          ),
                        h10,
                        state.toBillItems.isEmpty
                            ? const SizedBox()
                            : Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: ExpansionTile(
                                  childrenPadding: EdgeInsets.all(0),
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
                                      horizontal: 10),
                                    title: Text(
                                        'Selected Item (${state.toBillItems.length})'),
                                    children: [
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .4,
                                        child: ListView.builder(
                                          itemCount: state.toBillItems.length,
                                          itemBuilder: (context, index) =>
                                              ListTile(
                                                  onLongPress: () {
                                                  
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (context) => BSheet(
                                              reason: state.items[index].returneReasone,
                                              
                                              from: from==0? 1:
                                              
                                              2,
                                              qty: state.items[index].count,
                                              product: state.items[index],
                                              rate: state
                                                  .items[index].saleamntwithtax,
                                              itemName:
                                                  state.items[index].pdtname,
                                              id: state.items[index].id,
                                            ),
                                          );
                                                  },
                                                  
                                                    contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 10, vertical: 0),
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
                                                  fontSize: 14,fontWeight: FontWeight.w600,
                                                  color: maincolor1),
                                            ),
                                            trailing: SizedBox(
                                              child: QuantityCounter(
                                                from: 0,
                                                item: state.items[index],
                                              ),
                                            ),),
                                        ),
                                      )
                                    ]),
                              ),
                      ],
                    )

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
                    //           Expanded(
                    //            child: Container(
                    //            height: 1,
                    //               color: Colors.black12,
                    //           ),
                    //             ),
                    //             w10,
                    //             Text('(${state.toBillItems.length.toString()})')
                    //           ],
                    //         ),
                    //       ),
                    //     : Column(
                    //         children:),
                    ,
                    Expanded(
                      child: state.isLoading
                          ? const ListShimmer()
                          : state.items.isEmpty
                              ?  ListView(children: const [
                              h20,
                              h20,
                              h20,
                              h20,
                              Center(child: Text('No data')),
                            ])
                              : ListView.builder(
                                  itemCount: state.items.length,
                                  itemBuilder: (context, index) {
                                    // log('   >>>>>>>  taxInRate' +
                                    //     state.taxInRate[index].toString());
                                    // log('   >>>>>>>  tempmrp' + state.tempMrp.toString());

                                    return ListTile(
                                        onLongPress: () {

                                          showModalBottomSheet(
                                            context: context,
                                            builder: (context) => BSheet(
                                              reason: state.items[index].returneReasone,
                                              
                                              from: from==0? 1:
                                              
                                              2,
                                              qty: state.items[index].count,
                                              product: state.items[index],
                                              rate: state
                                                  .items[index].saleamntwithtax,
                                              itemName:
                                                  state.items[index].pdtname,
                                              id: state.items[index].id,
                                            ),
                                          );
                                        },
                                           contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15, vertical: 0),
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
                                                  fontSize: 14,fontWeight: FontWeight.w600,
                                                  color: maincolor1),
                                            ),
                                            trailing: SizedBox(
                                              child: QuantityCounter(
                                                from: 0,
                                                item: state.items[index],
                                              ),
                                            ),);
                                  }),
                    )
                  ],
                );
              },
            ),
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
