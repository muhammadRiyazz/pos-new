import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/application/customerpart/customerpart_bloc.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/presentaion/screen%20customer%20details/add_dscd.dart';
import 'package:p_o_s/presentaion/screen%20customer%20details/widgets/customerdetailstile.dart';
import 'package:p_o_s/widgets/mainbutton.dart';

import '../../domain/customers/customers_list.dart';

class ScreenCustomerDetails extends StatefulWidget {
  const ScreenCustomerDetails({super.key, required this.customerDetail});
  final Customerslist customerDetail;

  @override
  State<ScreenCustomerDetails> createState() => _ScreenCustomerDetailsState();
}

class _ScreenCustomerDetailsState extends State<ScreenCustomerDetails> {
  String selectedValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Customer Details'),
      ),
      body: BlocConsumer<CustomerpartBloc, CustomerpartState>(
        listener: (context, state) {
          if (state.remarkStatus == 1) {
            log('remark added');

            BlocProvider.of<CustomerpartBloc>(context).add(
                CustomerpartEvent.remarklist(
                    cusId: widget.customerDetail.cusid!));
                    setState(() {
                      
                    });
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CustomerDetailsTile(
                  title: 'Business name',
                  sub: widget.customerDetail.bussinessname,
                ),
                h10,
                CustomerDetailsTile(
                  title: 'Address',
                  sub: widget.customerDetail.bussinessaddr,
                ),
                h10,
                CustomerDetailsTile(
                  title: 'Email',
                  sub: 'example@gmail.com',
                ),
                h10,
                CustomerDetailsTile(
                  title: 'Phone',
                  sub: widget.customerDetail.contactsmsno!,
                ),
                h10,
                CustomerDetailsTile(
                  title: 'GSTIN',
                  sub: widget.customerDetail.gstno!,
                ),
                h10,
                CustomerDetailsTile(
                  title: 'State',
                  sub: widget.customerDetail.state!,
                ),
                h10,
                CustomerDetailsTile(
                  title: 'District',
                  sub: widget.customerDetail.district!,
                ),
                // CustomerDetailsTile(
                //   title: 'naraion',
                //   sub: state.slctremark ?? "-----",
                // ),
                h20, h20,

           state.isLoading
                      ?SizedBox()   :   ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(maincolor1),
                      ),
                      onPressed: () {
                        if (state.slctremark == null|| (state.slctremark!=null &&state.slctremark!.remark== 'Attended') ) {
                          BlocProvider.of<CustomerpartBloc>(context)
                              .add(SelectBiller(biller: widget.customerDetail));
                          Navigator.pop(context);
                          Navigator.pop(context);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please update the Attended Remark to "Attended" for the next process step.',
                                style: TextStyle(color: white),
                              ),
                              backgroundColor: maincolor1,
                            ),
                          );
                        }
                      },
                      child: SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: Center(
                          child: Text('Add to bill',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                        ),
                      ),
                    )),
                h10,
                SizedBox(
                  child: state.isLoading
                      ? LinearProgressIndicator(
                          color: white,
                          backgroundColor: maincolor1,
                          minHeight: 1,
                        )
                      : state.slctremark == null ||
                              state.slctremark!.remark != 'Attended'
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: BorderSide(
                                          color: maincolor1,
                                          width: 1), // Border color and width
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 5),
                                          child: Text(
                                            'Choose Your Preferred Option', // More attractive title
                                            style: TextStyle(
                                              fontSize:
                                                  17, // Larger title text size
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        content: SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9, // Increase width
                                          height:
                                              200, // Set a fixed height for content
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              DropdownButtonFormField<String>(
                                                value: state.slctremark == null
                                                    ? null
                                                    : state.slctremark!.remark,
                                                decoration: InputDecoration(
                                                  labelText: 'Select an Option',
                                                  labelStyle: TextStyle(
                                                      fontSize:
                                                          18), // Larger label text
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                    vertical:
                                                        16.0, // More space inside the dropdown
                                                    horizontal: 12.0,
                                                  ),
                                                ),
                                                items: state
                                                    .customerAttendanceList
                                                    .map((String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    selectedValue = newValue!;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        actions: <Widget>[
                                          TextButton(
                                            child: Text('Cancel'),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          TextButton(
                                            child: Text('Confirm Selection'),
                                            onPressed: () {
                                              if (selectedValue.isEmpty) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Please select an option before proceeding.',
                                                      style: TextStyle(
                                                          color: white),
                                                    ),
                                                    backgroundColor: maincolor1,
                                                  ),
                                                );
                                              } else {
                                                if (selectedValue ==
                                                    'Attended') {
                                                  log('selected is attended');
                                                  BlocProvider.of<
                                                              CustomerpartBloc>(
                                                          context)
                                                      .add(
                                                    CustomerpartEvent.addremark(
                                                      editdata:
                                                          state.slctremark,
                                                      remark: selectedValue,
                                                      desc: selectedValue ==
                                                              'Attended'
                                                          ? 'Attended'
                                                          : '',
                                                    ),
                                                  );
                                                  BlocProvider.of<
                                                              CustomerpartBloc>(
                                                          context)
                                                      .add(
                                                    SelectBiller(
                                                        biller: widget
                                                            .customerDetail),
                                                  );
                                                  Navigator.pop(context);
                                                  Navigator.pop(context);
                                                  Navigator.pop(context);
                                                } else {
                                                  BlocProvider.of<
                                                              CustomerpartBloc>(
                                                          context)
                                                      .add(
                                                    CustomerpartEvent.addremark(
                                                      editdata: state
                                                                  .slctremark ==
                                                              null
                                                          ? null
                                                          : state.slctremark,
                                                      name: widget
                                                          .customerDetail
                                                          .bussinessname,
                                                      cusId: widget
                                                          .customerDetail
                                                          .cusid!,
                                                      remark: selectedValue,
                                                      desc: selectedValue ==
                                                              'Attended'
                                                          ? 'Attended'
                                                          : '',
                                                    ),
                                                  );
                                                  Navigator.of(context).pop();
                                                }
                                              }
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );

                                  // Navigator.pop(context);
                                  // Navigator.pop(context);
                                },
                                child: SizedBox(
                                  height: 45,
                                  width: double.infinity,
                                  child: Center(
                                    child: Text(
                                        state.slctremark == null
                                            ? 'Add Customer Attendance'
                                            : 'Change Customer Attendance',
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w600,
                                            color: maincolor1)),
                                  ),
                                ),
                              ))
                          : SizedBox(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
