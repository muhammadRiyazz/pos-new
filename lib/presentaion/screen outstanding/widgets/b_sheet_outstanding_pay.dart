import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/application/accounts/payment%20bloc/payment_bloc.dart';
import 'package:p_o_s/application/paymenTtype/payment_methord_bloc.dart';
import 'package:p_o_s/commons/profile_varibles.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/domain/accounts%20model/account_model.dart';
import 'package:p_o_s/presentaion/blutooth%20connectivity/bluetooth.dart';

class BOutstandingSheet extends StatefulWidget {
  const BOutstandingSheet({
    required this.id,
    required this.name,
    required this.outstanding,
    required this.outstandingType,
    super.key,
  });
  final String id, name, outstandingType;
  final double outstanding;

  @override
  State<BOutstandingSheet> createState() => _BOutstandingSheetState();
}

class _BOutstandingSheetState extends State<BOutstandingSheet> {
  final amttController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? selectedMethod;

  String payDrCr = 'Cr';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        // Set your desired height
        child: Wrap(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                h5,
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(50)),
                ),
                h10,
                Text(
                  'Payment',
                  style: GoogleFonts.montserrat(fontSize: 20),
                ),
                h10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: payDrCr,
                          groupValue: 'Cr',
                          onChanged: (value) {
                            setState(() {
                              payDrCr = 'Cr';
                            });
                          },
                        ),
                        Text('Credit')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: payDrCr,
                          groupValue: 'Dr',
                          onChanged: (value) {
                            setState(() {
                              payDrCr = 'Dr';
                            });
                          },
                        ),
                        Text('Debit')
                      ],
                    )
                  ],
                ),
                h5,
                Form(
                  key: formKey,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    // inputFormatters: [
                    //   FilteringTextInputFormatter.deny(RegExp(r'[^\x00-\x7F]'))
                    // ],
                    style: GoogleFonts.poppins(color: Colors.black),
                    controller: amttController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(5),
                      hintText: 'Amount',
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.black38, fontWeight: FontWeight.w300),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.black12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.black12),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.black12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: maincolor1),
                      ),
                    ),
                    onChanged: (value) {
                      // validate(formKey);
                    },
                    // validator: (mail) {
                    //   if (mail!.length != 0) {
                    //   } else {
                    //     return 'Enter a valid catagory';
                    //   }
                    //   return null;
                    // },
                  ),
                ),
                h10,
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  child: BlocBuilder<PaymentMethordBloc, PaymentMethordState>(
                    builder: (context, state) {
                      return DropdownButtonFormField<String>(
                        onChanged: (value) {},
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Please select your category.';
                        //   }
                        //   return null;
                        // },
                        // key: dropdownKeyCategory,
                        hint: const Text(
                          'Paytype',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        // value: '1',
                        // value: '$selectedCategory   $selectedCategoryPercent',
                        items:
                            List.generate(state.paymenbtTypes.length, (index) {
                          return DropdownMenuItem<String>(
                            onTap: () {
                              selectedMethod = state.paymenbtTypes[index];
                              // categoryId = state
                              //     .complaintCategorylist[index]
                              //     .complaintCatId;
                            },
                            value: state.paymenbtTypes[index],
                            child: Text(
                              state.paymenbtTypes[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                              ),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
                h15,
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(maincolor1)),
                        onPressed: () {
                          AccountsInsertModel model = AccountsInsertModel(
                              outstaingtype: widget.outstandingType,
                              amount: 0.0,
                              outstaing: widget.outstanding,
                              description: 'description',
                              openingbalance: 'openingbalance',
                              cat: 'paid amount',
                              paidby: selectedMethod,
                              payCrDr: payDrCr,
                              payInVid: '',
                              payOrExpDate: DateTime.parse(
                                  '${DateTime.now().toString().substring(0, 10)} 00:00:00.000'),
                              reff: 'reff',
                              rootType: payDrCr == 'Cr' ? 'Recipt' : 'Payment',
                              totalamount: 0.0,
                              totalpaidamount: 0.0,
                              totaltaxamount: 0.0,
                              vendIdOreCusId: widget.id,
                              vendIdOreCusName: widget.name,
                              paidamount:
                                  double.parse(amttController.text.toString()));
                          if (formKey.currentState!.validate() &&
                              selectedMethod != null) {
                            log(model.paidamount.toString());
                            log(model.paidby.toString());
                            log(model.payCrDr.toString());
                            log(model.payOrExpDate.toString());
                            log(model.rootType.toString());
                            log(model.vendIdOreCusId.toString());
                            log(model.vendIdOreCusName.toString());
                            BlocProvider.of<PaymentBloc>(context)
                                .add(Payment(model: model));
                            Navigator.pop(context);
                          } else {
                            Fluttertoast.showToast(
                                msg: 'Select payment method');
                          }
                        },
                        child: Text(
                          'Pay',
                          style: GoogleFonts.poppins(color: Colors.white),
                        ))),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
