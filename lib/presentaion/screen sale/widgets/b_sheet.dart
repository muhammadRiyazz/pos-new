import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/application/checkout/checkout_bloc.dart';
import 'package:p_o_s/application/salesitems/sales_item_bloc.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/domain/stock/stock_model.dart';

class BSheet extends StatefulWidget {
  BSheet({
    super.key,
    required this.id,
    required this.from,
    required this.product,
    required this.itemName,
    required this.qty,
    required this.rate,
    this.reason,
  });
  final int id;
  final int qty;
  final int from;
  String? reason;
  final String itemName;
  final double rate;
  final Stocklist product;

  @override
  State<BSheet> createState() => _BSheetState();
}

class _BSheetState extends State<BSheet> {
  TextEditingController rateController = TextEditingController();
  TextEditingController qtyController = TextEditingController();

  @override
  void initState() {
    rateController = TextEditingController(text: widget.rate.toString());
    qtyController = TextEditingController(
        text: widget.qty == 0 ? '' : widget.qty.toString());
    super.initState();
  }

  String? _dropdownError;
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: BlocBuilder<SalesItemBloc, SalesItemState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23.0),
                  child: BlocBuilder<CheckoutBloc, CheckoutState>(
                    builder: (context, astate) {
                      return Column(
                        children: [
                          h15,
                          Container(
                            width: 40,
                            height: 4,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          h20,
                          Text(
                            '${widget.itemName}',
                            style: GoogleFonts.montserrat(fontSize: 17),
                          ),
                          h20,
                          widget.from == 0
                              ? astate.isLoadingvan
                                  ? LinearProgressIndicator(
                                      backgroundColor: Colors.transparent,
                                      color: maincolor1,
                                      minHeight: 1,
                                    )
                                  : Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color.fromARGB(
                                                255, 218, 218, 218)),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 14, horizontal: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Available van stock  -',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 15,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              '${astate.vanstock} ',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 17,
                                                  color: maincolor1,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                              : SizedBox(),
                          h20,
                          Form(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(' Rate'),
                                          h5,
                                          TextFormField(
                                            keyboardType: TextInputType.number,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black),
                                            controller: rateController,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              hintText: widget.rate.toString(),
                                              hintStyle: GoogleFonts.poppins(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w300),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.black26),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.black26),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.black26),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: maincolor1),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    w20,
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(' Quantity'),
                                          h5,
                                          TextFormField(
                                            keyboardType: TextInputType.number,
                                            style: GoogleFonts.poppins(
                                                color: Colors.black),
                                            controller: qtyController,
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              hintText: 'Qty',
                                              hintStyle: GoogleFonts.poppins(
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.w300),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.black26),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.black26),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: Colors.black26),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                borderSide: const BorderSide(
                                                    color: maincolor1),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                h20,
                                h5,
                                widget.from == 1
                                    ? Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text('Return Reason'),
                                          ),
                                          h5,
                                          Container(
                                            width: double.infinity,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 12, vertical: 4),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton<String>(
                                                value: dropdownValue.isEmpty
                                                    ? widget.reason
                                                    : dropdownValue,
                                                hint: Text("Select a Reason"),
                                                items: state.reasonlist
                                                    .map((String items) {
                                                  return DropdownMenuItem(
                                                    value: items,
                                                    child: Text(items),
                                                  );
                                                }).toList(),
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    dropdownValue = newValue!;
                                                    _dropdownError = null;
                                                  });
                                                },
                                                isExpanded: true,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ),
                          _dropdownError != null && widget.from == 1
                              ? Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      _dropdownError!,
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                )
                              : SizedBox(),
                          h20,
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: maincolor1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              minimumSize: Size(double.infinity, 50),
                            ),
                            onPressed: () {
                              setState(() {
                                if (dropdownValue.isEmpty && widget.from == 1) {
                                  _dropdownError =
                                      "Please select a valid reason";
                                } else {
                                  _dropdownError = null;
                                  if (qtyController.text == '') {
                                    Fluttertoast.showToast(
                                        msg: "Please Enter A valid Quantity");
                                  }else if  (double.parse(rateController.text) <= 0) {
                                    Fluttertoast.showToast(
                                        msg: "Price can't be set to 0");
                                  }
                                  
                                  
                                  
                                  
                                   else if (int.parse(qtyController.text) <
                                      0) {
                                    Fluttertoast.showToast(
                                        msg: "Price should be greater than 0");
                                  } else if (int.parse(qtyController.text) >
                                          astate.vanstock &&
                                      widget.from == 0) {
                                    Fluttertoast.showToast(
                                        msg:
                                            "Available van stock only ${astate.vanstock}");
                                  } else {
                                    BlocProvider.of<SalesItemBloc>(context).add(
                                        QuantityFromBSheet(
                                            id: widget.id,
                                            newItemAmt: double.parse(
                                                rateController.text),
                                            qty:
                                                int.parse(qtyController.text)));
                                    BlocProvider.of<SalesItemBloc>(context).add(
                                        ItemFromBSheet(
                                            reason: dropdownValue,
                                            product: widget.product,
                                            qty:
                                                int.parse(qtyController.text)));
                                    Navigator.pop(context);
                                  }
                                }
                              });
                            },
                            child: Text(
                              'Add',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          h20,
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
