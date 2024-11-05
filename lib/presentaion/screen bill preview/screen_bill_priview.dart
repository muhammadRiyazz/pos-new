import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/application/bill%20submit/bloc/submitbill_bloc.dart';
import 'package:p_o_s/application/bills/bloc/bill_bloc.dart';
import 'package:p_o_s/application/paymenTtype/payment_methord_bloc.dart';
import 'package:p_o_s/application/salesitems/sales_item_bloc.dart';
import 'package:p_o_s/application/customerpart/customerpart_bloc.dart';
import 'package:p_o_s/application/report/bloc/report_bloc.dart';
import 'package:p_o_s/commons/profile_varibles.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/domain/customers/customers_list.dart';
import 'package:p_o_s/presentaion/blutooth%20connectivity/bluetooth.dart';

import 'package:p_o_s/presentaion/screen%20sale/screen_sales.dart';
import 'package:p_o_s/presentaion/screen%20sales%20return/screen_sales_return.dart';
import 'package:p_o_s/widgets/mainbutton.dart';
import 'package:p_o_s/widgets/shimmer.dart';

// class ScreenBillPreview extends StatelessWidget {
//   ScreenBillPreview({super.key, required this.from, required this.itemsToBill});
class ScreenBillPreview extends StatelessWidget {
  ScreenBillPreview({
    super.key,
    required this.from,
  });
  int from;
  final formKey = GlobalKey<FormState>();

  String? selectedMethod;
  Customerslist? customer;
  TextEditingController discountController =
      TextEditingController(text: '0.00');
  TextEditingController paymentamtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PaymentMethordBloc>(context).add(const Fetchtypes());
      log('aaaaaaaaaaaaaaa----');
    });

    return WillPopScope(
      onWillPop: () async {
        log('back');
        BlocProvider.of<SalesItemBloc>(context).add(const FetchToBillList());
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                log('back');
                Navigator.of(context).pop();
                BlocProvider.of<SalesItemBloc>(context)
                    .add(const FetchToBillList());
              },
              icon: const Icon(Icons.arrow_back)),
          title: Text(from == 2
              ? 'Estimate Preview'
              : from == 1
                  ? 'Sales Return'
                  : 'Bill Preview'),
        ),
        body: BlocConsumer<SubmitbillBloc, SubmitbillState>(
          listener: (context, state) {


if (state.trafic) {
  


  ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(duration: Duration(seconds: 5),
    behavior: SnackBarBehavior.floating,
    content: Text(
      'Network Busy, Please try again.',
      style: TextStyle(fontSize: 15, color: Color.fromARGB(255, 197, 197, 197)),
    ),
    backgroundColor: Colors.redAccent,
  ),
);
}

            if (state.billsubmission||state.saleretunbill || state.printbill) {
              
  
              showDialog(
                context: context,
                barrierDismissible:
                    false, // This prevents tapping on the background to dismiss the dialog
                builder: (BuildContext context) {
                  return WillPopScope(
                    onWillPop: () async {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ScreenSales();
                          },
                        ),
                        (route) => false,
                      );
                      BlocProvider.of<SalesItemBloc>(context)
                          .add(const FetchToBillList());
                      BlocProvider.of<SalesItemBloc>(context)
                          .add(const ClearingToBillList());
                      BlocProvider.of<CustomerpartBloc>(context)
                          .add(const RemoveBiller());
                      BlocProvider.of<SalesItemBloc>(context)
                          .add(const ClearingToBillList());
                      BlocProvider.of<SalesItemBloc>(context)
                          .add(const ItemsList());
                      BlocProvider.of<BillBloc>(context).add(const FetchBill());
                      BlocProvider.of<BillBloc>(context)
                          .add(const FetchReturnBill());
                      BlocProvider.of<ReportBloc>(context).add(
                          const FetchTotalSaleReports(eDate: '', sDate: ''));
                      BlocProvider.of<ReportBloc>(context).add(
                          const FetchTotalSaleReturnReports(
                              eDate: '', sDate: ''));
                      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      //   builder: (context) {
                      //     return const ScreenHome();
                      //   },
                      // ), (route) => false);
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => ScreenSales(),
                      //     ));

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


                                  if (from==2) {
                                      Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return  ScreenSalesReturn(from: 2,);
                                      },
                                    ),
                                    (route) => false,
                                  );
                                  } else if(from==1) {
                                      Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return  ScreenSalesReturn( from: 0,);
                                      },
                                    ),
                                    (route) => false,
                                  );
                                  }else{
                                   Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return  ScreenSales();
                                      },
                                    ),
                                    (route) => false,
                                  ); 
                                  }
                                

                                  BlocProvider.of<ReportBloc>(context)
                                      .add(const Todayreport());
                                  BlocProvider.of<CustomerpartBloc>(context)
                                      .add(const RemoveBiller());
                                  BlocProvider.of<SalesItemBloc>(context)
                                      .add(const FetchToBillList());
                                  BlocProvider.of<SalesItemBloc>(context)
                                      .add(const ClearingToBillList());
                                  BlocProvider.of<SalesItemBloc>(context)
                                      .add(const ClearingToBillList());
                                  BlocProvider.of<SalesItemBloc>(context)
                                      .add(const ItemsList());
                                  BlocProvider.of<BillBloc>(context)
                                      .add(const FetchBill());
                                  BlocProvider.of<BillBloc>(context)
                                      .add(const FetchReturnBill());
                                  BlocProvider.of<ReportBloc>(context).add(
                                      const FetchTotalSaleReports(
                                          eDate: '', sDate: ''));
                                  BlocProvider.of<ReportBloc>(context).add(
                                      const FetchTotalSaleReturnReports(
                                          eDate: '', sDate: ''));
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
                            Center(
                                child: Text(
                              'Bill Submission Completed',
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
                                        if (customer != null) {
                                          BlocProvider.of<SubmitbillBloc>(
                                                  context)
                                              .add(Printbill(from: from == 2?2:from==1?1:0 ,
                                                  isSunmi: true,
                                                  customers: customer!,
                                                  paidAmt: paymentamtController
                                                              .text
                                                              .toString() ==
                                                          ''
                                                      ? ''
                                                      : paymentamtController
                                                          .text
                                                          .toString()));
                                        } else {
                                          log('customerr null');
                                        }
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
                                          if (customer != null) {
                                            BlocProvider.of<SubmitbillBloc>(
                                                    context)
                                                .add(Printbill(from:from == 2?2:from==1?1:0 ,
                                                    isSunmi: false,
                                                    customers: customer!,
                                                    paidAmt: paymentamtController
                                                                .text
                                                                .toString() ==
                                                            ''
                                                        ? ''
                                                        : paymentamtController
                                                            .text
                                                            .toString()));
                                          } else {
                                            log('customerr null');
                                          }
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
            } else {}

            // if (state.saleretunbill || state.printbill) {
            //   showDialog(
            //     context: context,
            //     barrierDismissible:
            //         false, // This prevents tapping on the background to dismiss the dialog
            //     builder: (BuildContext context) {
            //       return WillPopScope(
            //         onWillPop: () async {
            //           Navigator.pushAndRemoveUntil(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) {
            //                 return from == 1
            //                     ? ScreenSalesReturn(
            //                         from: 0,
            //                       )
            //                     : ScreenSalesReturn(
            //                         from: 1,
            //                       );
            //               },
            //             ),
            //             (route) => false,
            //           );
            //           BlocProvider.of<SalesItemBloc>(context)
            //               .add(const FetchToBillList());
            //           BlocProvider.of<SalesItemBloc>(context)
            //               .add(const ClearingToBillList());
            //           BlocProvider.of<CustomerpartBloc>(context)
            //               .add(const RemoveBiller());
            //           BlocProvider.of<SalesItemBloc>(context)
            //               .add(const ClearingToBillList());
            //           BlocProvider.of<SalesItemBloc>(context)
            //               .add(const ItemsList());
            //           BlocProvider.of<BillBloc>(context).add(const FetchBill());
            //           BlocProvider.of<BillBloc>(context)
            //               .add(const FetchReturnBill());

            //           BlocProvider.of<ReportBloc>(context).add(
            //               const FetchTotalSaleReturnReports(
            //                   eDate: '', sDate: ''));

            //           return false;
            //         }, // Disable back button

            //         child: AlertDialog(
            //           content: Wrap(children: [
            //             Column(
            //               mainAxisAlignment: MainAxisAlignment.end,
            //               crossAxisAlignment: CrossAxisAlignment.end,
            //               children: [
            //                 IconButton(
            //                     onPressed: () {
            //                       Navigator.pushAndRemoveUntil(
            //                         context,
            //                         MaterialPageRoute(
            //                           builder: (context) {
            //                             return from == 1
            //                                 ? ScreenSalesReturn(
            //                                     from: 0,
            //                                   )
            //                                 : ScreenSalesReturn(
            //                                     from: 1,
            //                                   );
            //                           },
            //                         ),
            //                         (route) => false,
            //                       );

            //                       BlocProvider.of<ReportBloc>(context)
            //                           .add(const Todayreport());

            //                       BlocProvider.of<SalesItemBloc>(context)
            //                           .add(const FetchToBillList());
            //                       BlocProvider.of<SalesItemBloc>(context)
            //                           .add(const ClearingToBillList());

            //                       BlocProvider.of<SalesItemBloc>(context)
            //                           .add(const ItemsList());
            //                       BlocProvider.of<BillBloc>(context)
            //                           .add(const FetchBill());
            //                       BlocProvider.of<BillBloc>(context)
            //                           .add(const FetchReturnBill());

            //                       BlocProvider.of<ReportBloc>(context).add(
            //                           const FetchTotalSaleReturnReports(
            //                               eDate: '', sDate: ''));
            //                       BlocProvider.of<CustomerpartBloc>(context)
            //                           .add(const RemoveBiller());
            //                     },
            //                     icon: const Icon(
            //                       Icons.close,
            //                       weight: 5,
            //                     )),
            //                 const Center(
            //                   child: CircleAvatar(
            //                       backgroundColor: maincolor1,
            //                       radius: 37,
            //                       child: Padding(
            //                         padding: EdgeInsets.all(8.0),
            //                         child: Icon(
            //                           Icons.done_rounded,
            //                           color: Colors.white,
            //                         ),
            //                       )),
            //                 ),
            //                 h5,
            //                 const Center(
            //                     child: Text(
            //                   'Success',
            //                   style: TextStyle(fontSize: 16),
            //                 )),
            //                 Center(
            //                     child: Text(
            //                   'Submission Successfully Completed',
            //                   style:
            //                       TextStyle(fontSize: 13, color: Colors.grey),
            //                 )),
            //                 h5,
            //                 h5,
            //               ],
            //             ),
            //           ]),
            //         ),
            //       );
            //     },
            //   );
            // }
          },
          builder: (context, state) {
            return state.isLoading
                ? const Center(
                    child: BillpreviewShimmer(),
                  )
                : state.isError
                    ? const Center(
                        child: Text('error'),
                      )
                    : ListView(
                        children: [
                          BlocBuilder<CustomerpartBloc, CustomerpartState>(
                            builder: (context, cstate) {
                              if (cstate.biller != null) {
                                customer = cstate.biller;
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(10)),
                                          border: Border.all()),
                                      child: ListTile(
                                        trailing: Text(
                                          cstate.biller!.customerType!,
                                          strutStyle: StrutStyle(fontSize: 10),
                                        ),
                                        title:
                                            Text(cstate.biller!.bussinessname),
                                      )),
                                );
                              } else {
                                return SizedBox();
                              }
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(color: maincolor1)),
                              child: Column(
                                children: [
                                  Column(
                                    children: List.generate(state.list.length,
                                        (index) {
                                      return ListTile(
                                        leading: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            color: maincolor1,
                                          ),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 12, vertical: 0),
                                        title: Text(state.list[index].pdtname),
                                        subtitle: Text(
                                            '(${state.list[index].count} *  ${state.previewlist[index].saleRate.toStringAsFixed(3)})'),
                                        trailing: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                BlocProvider.of<SubmitbillBloc>(
                                                        context)
                                                    .add(RemoveItem(
                                                        invoicelist:
                                                            state.previewlist,
                                                        context: context,
                                                        itemIndex: index));
                                                BlocProvider.of<SalesItemBloc>(
                                                        context)
                                                    .add(Clearing(
                                                        product:
                                                            state.list[index]));

                                                log('${index + 1}  ---------- ${state.list.length}');
                                                if (1 == state.list.length) {
                                                  Navigator.pop(context);
                                                } else {}
                                              },
                                              child: const Icon(
                                                Icons.close_rounded,
                                                size: 20,
                                              ),
                                            ),
                                            h5,
                                            Text(
                                                '₹${(state.list[index].count * state.previewlist[index].saleRate).toStringAsFixed(3)}',
                                                style:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 15)),
                                          ],
                                        ),
                                      );
                                    }),
                                  ),
                                  const Divider(
                                    height: 0,
                                    indent: 10,
                                    endIndent: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Sub Total (Total taxable amt)',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14)),
                                        Text(
                                            // '₹${calculateSubTotal(state.list)}',
                                            '₹${state.subtotal.toStringAsFixed(3)}',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14))
                                      ],
                                    ),
                                  ),
                                  from != 0
                                      ? const SizedBox()
                                      : Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2.0, horizontal: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Add Discount',
                                                  style: GoogleFonts
                                                      .montserrat(
                                                          fontSize: 14)),
                                              Row(
                                                children: [
                                                  Text('₹',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontSize: 16)),
                                                  InkWell(
                                                    onTap: () {
                                                      showDialog(
                                                        context: context,
                                                        builder: (BuildContext
                                                            context) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                "Add Discount"),
                                                            content: Form(
                                                              key: formKey,
                                                              child:
                                                                  TextFormField(
                                                                validator:
                                                                    (value) {
                                                                  if (value ==
                                                                          null ||
                                                                      value
                                                                          .isEmpty) {
                                                                    return 'Please enter a discount amount';
                                                                  } else {
                                                                    // Assuming billAmount is the variable holding the bill amount
                                                                    double?
                                                                        discountAmount =
                                                                        double.tryParse(
                                                                            value);
                                                                    if (discountAmount ==
                                                                        null) {
                                                                      return 'Please enter a valid number';
                                                                    }
                                                                    if (discountAmount >
                                                                        state
                                                                            .invoiceTotal) {
                                                                      return 'Discount cannot exceed the bill amount';
                                                                    }
                                                                  }

                                                                  return null; // Return null if validation passes
                                                                },
                                                                controller:
                                                                    discountController,
                                                                keyboardType:
                                                                    const TextInputType
                                                                        .numberWithOptions(
                                                                        decimal:
                                                                            true),
                                                                decoration:
                                                                    const InputDecoration(
                                                                        labelText:
                                                                            "Discount"),
                                                              ),
                                                            ),
                                                            actions: [
                                                              MainButton(
                                                                  ontap: () {
                                                                    if (formKey
                                                                        .currentState!
                                                                        .validate()) {
                                                                      BlocProvider.of<SubmitbillBloc>(context).add(AddDiscount(
                                                                          dicountamt: double.parse(discountController
                                                                              .text),
                                                                          selectedstocklist:
                                                                              state.list));
                                                                      Navigator.pop(
                                                                          context);
                                                                    }
                                                                  },
                                                                  title:
                                                                      'Add Discount')
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    },
                                                    child: SizedBox(
                                                        width: 70,
                                                        height: 25,
                                                        child: TextFormField(
                                                          enabled: false,
                                                          textAlign:
                                                              TextAlign.end,
                                                          controller:
                                                              discountController,
                                                          style: GoogleFonts
                                                              .montserrat(
                                                                  fontSize: 14),
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          cursorHeight: 15,
                                                          decoration: const InputDecoration(
                                                              hintText: '00.00',
                                                              contentPadding:
                                                                  EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          0,
                                                                      vertical:
                                                                          8)),
                                                        )),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Tax',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14)),
                                        Text(
                                            // '₹${calculateTotalTaxSum(state.list)}',
                                            '₹${state.taxinc.toStringAsFixed(3)}',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 2.0, horizontal: 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                            from == 2
                                                ? 'Estimate Total'
                                                : 'Bill Total',
                                            style: GoogleFonts.montserrat(
                                                color: from == 2 || from == 1
                                                    ? maincolor1
                                                    : null,
                                                fontSize: from == 2 || from == 1
                                                    ? 18
                                                    : 14)),
                                        Text(
                                            // '₹${calculateTotalTaxSum(state.list)}',
                                            '₹${state.invoiceTotal.toStringAsFixed(3)}',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 17))
                                      ],
                                    ),
                                  ),
                                  Divider(),
                                  // Padding(
                                  //   padding: const EdgeInsets.symmetric(
                                  //       vertical: 2.0, horizontal: 12),
                                  //   child: Row(
                                  //     mainAxisAlignment:
                                  //         MainAxisAlignment.spaceBetween,
                                  //     children: [
                                  //       Text('Bill Total',
                                  //           style: GoogleFonts.montserrat(
                                  //               fontSize: 14,
                                  //               color: maincolor1)),
                                  //       Text(
                                  //           // '₹${calculateDiscount(calculateSubTotal(state.list), double.parse(discountController.text))}',
                                  //           '₹${state.netamount.toStringAsFixed(3)}',
                                  //           style: GoogleFonts.montserrat(
                                  //               fontSize: 14,
                                  //               color: maincolor1))
                                  //     ],
                                  //   ),
                                  // ),
                                  from != 0
                                      ? const SizedBox()
                                      : Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 2.0, horizontal: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                  'Customer Outstanding (${state.outstaingtype})',
                                                  style: GoogleFonts
                                                      .montserrat(
                                                          fontSize: 14,
                                                          color: maincolor1)),
                                              Text(
                                                  '₹${state.outstandingCreditamt.abs().toStringAsFixed(3)}',
                                                  style: GoogleFonts
                                                      .montserrat(
                                                          fontSize: 14,
                                                          color: maincolor1))
                                            ],
                                          ),
                                        ),

                                  from == 2 || from == 1
                                      ? SizedBox()
                                      : Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4.0, horizontal: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Grand Total',
                                                  style: GoogleFonts
                                                      .montserrat(
                                                          fontSize: 18,
                                                          color: maincolor1)),
                                              Text(
                                                '₹${state.grossTotal.abs().toStringAsFixed(3)}',
                                                style:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 18,
                                                        color: maincolor1),
                                              )
                                            ],
                                          ),
                                        )
                                ],
                              ),
                            ),
                          ),
                          from != 0
                              ? const SizedBox()
                              : Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0, vertical: 0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: // State variable for dropdown selection

  
   BlocBuilder<PaymentMethordBloc, PaymentMethordState>(
    builder: (context, state) {
      return DropdownButtonFormField<String>(
        value: selectedMethod,
        hint: const Text(
          'Paytype',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
          ),
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        items: state.paymenbtTypes.map((method) {
          return DropdownMenuItem<String>(
            value: method,
            child: Text(
              method,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {
            selectedMethod = value; // Update the selected method
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please select a payment method.';
          }
          return null;
        },
      );
    },
  ),

                                      ),
                                      // PaytypeDrop(),
                                      w5,
                                      Expanded(
                                        flex: 2,
                                        child: TextFormField(
                                          inputFormatters: <TextInputFormatter>[
                                            FilteringTextInputFormatter.allow(
                                                RegExp(
                                                    r'^\d+\.?\d{0,5}$')), // Regex to allow only numbers and up to two decimal places
                                          ],
                                          controller: paymentamtController,
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.all(5),
                                            prefixIcon: const Icon(
                                                Icons.currency_rupee),
                                            hintText: 'Amount',
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
                                          onChanged: (value) {},
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 10),
                            child: from == 1 || from == 2
                                ? BlocBuilder<CustomerpartBloc,
                                    CustomerpartState>(
                                    builder: (context, cstate) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15,
                                        ),
                                        child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        maincolor1)),
                                            onPressed: () {
                                              if (cstate.biller != null) {
                                                conformAlert(
                                                  label: from == 1
                                                      ? 'You want submit this Sales return Bull'
                                                      : from == 2
                                                          ? 'You want submit this Bull'
                                                          : '',
                                                  context: context,
                                                  ontap: () {
                                                    if (from == 1) {
                                                      BlocProvider.of<
                                                                  SubmitbillBloc>(
                                                              context)
                                                          .add(SubmitbillEvent
                                                              .submitretunBill(
                                                                  ctx: context,
                                                                  customers: cstate
                                                                      .biller!));
                                                    } else if (from == 2) {
                                                      BlocProvider.of<
                                                                  SubmitbillBloc>(
                                                              context)
                                                          .add(SubmitbillEvent
                                                              .estimatesubmite(
                                                                  ctx: context,
                                                                  customers: cstate
                                                                      .biller!));
                                                    }

                                                    Navigator.pop(context);
                                                  },
                                                );
                                              }
                                            },
                                            child: Text('Submit',
                                                style:
                                                    GoogleFonts.montserrat(
                                                        fontSize: 18,
                                                        color: Colors.white))),
                                      );
                                    },
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        BlocBuilder<CustomerpartBloc,
                                            CustomerpartState>(
                                          builder: (context, cstate) {
                                            return Expanded(
                                              child: ElevatedButton(
                                                  style: ButtonStyle(
                                                      padding:
                                                          MaterialStatePropertyAll(
                                                              EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          10)),
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(maincolor1)),
                                                  onPressed: () {
                                                    log('message    1');
                                                    if (cstate.biller != null) {
                                                      log('message    2');

                                                      if (paymentamtController
                                                                  .text !=
                                                              '' &&
                                                          selectedMethod ==
                                                              null) {
                                                        log('message    3');

                                                        Fluttertoast.showToast(
                                                            msg:
                                                                'Please Select the Payment type');
                                                      } else if (paymentamtController
                                                                  .text !=
                                                              '' &&
                                                          double.parse(
                                                                  paymentamtController
                                                                      .text) <=
                                                              0) {
                                                        Fluttertoast.showToast(
                                                            msg:
                                                                'Please enter a valid amount..');
                                                      } else {
                                                        log('message    4');

                                                        conformAlert(
                                                          label:
                                                              'You want submit this Bill',
                                                          context: context,
                                                          ontap: () {
                                                            BlocProvider.of<SubmitbillBloc>(context).add(SubmitbillEvent.submitBill(
                                                                ctx: context,
                                                                paymentType:
                                                                    selectedMethod ??
                                                                        'cash',
                                                                paymentamt: double.parse(
                                                                    paymentamtController.text ==
                                                                            ''
                                                                        ? '0.00'
                                                                        : paymentamtController
                                                                            .text),
                                                                customers: cstate
                                                                    .biller!));
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                        );
                                                      }
                                                    } else {
                                                      log('nullllllllllll');
                                                    }
                                                  },
                                                  child: Text('Submit Bill',
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontSize: 18,
                                                              color: Colors
                                                                  .white))),
                                            );
                                          },
                                        ),
                                        // w10,
                                        // Expanded(
                                        //   child: ElevatedButton(
                                        //       style: ButtonStyle(
                                        //           padding:
                                        //               MaterialStatePropertyAll(
                                        //                   EdgeInsets.symmetric(
                                        //                       vertical: 10)),
                                        //           backgroundColor:
                                        //               MaterialStateProperty.all(
                                        //                   maincolor1)),
                                        //       onPressed: () {},
                                        //       child: Text('Save & Print',
                                        //           style: GoogleFonts
                                        //               .montserrat(
                                        //                   fontSize: 18,
                                        //                   color:
                                        //                       Colors.white))),
                                        // ),
                                      ],
                                    ),
                                  ),
                          )
                        ],
                      );
          },
        ),
      ),
    );
  }

  Future<dynamic> conformAlert({
    required BuildContext context,
    required dynamic ontap,
    required String label,
  }) {
    return showModalBottomSheet(
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
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: 50,
                ),
                h10,
                const Text(
                  'Bill Submission',
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
                Text(label,
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
                              child: Text('Cancel'))),
                      w5,
                      Expanded(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(maincolor1)),
                              onPressed: ontap,
                              child: Text(
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
  }
}
