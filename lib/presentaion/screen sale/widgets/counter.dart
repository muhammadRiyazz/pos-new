import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/application/salesitems/sales_item_bloc.dart';
import 'package:p_o_s/commons/validation/validation.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/domain/stock/stock_model.dart';

// class QuantityCounter extends StatefulWidget {
//   const QuantityCounter({super.key,});

//   @override
//   _QuantityCounterState createState() => _QuantityCounterState();
// }

// class _QuantityCounterState extends State<QuantityCounter> {

// class QuantityCounter extends StatefulWidget {
//   QuantityCounter({super.key, required this.index, required this.rate,required this.qty});
//   int index;
//   int rate;
//   int qty;
//   @override
//   State<QuantityCounter> createState() => _QuantityCounterState();
// }

// class _QuantityCounterState extends State<QuantityCounter> {

//   final formKey = GlobalKey<FormState>();

//   void _increment() {
//     setState(() {
//       _quantity++;
//     });
//   }

//   void _decrement() {
//     if (_quantity > 0) {
//       setState(() {
//         _quantity--;
//       });
//     }
//   }

//   void _updateQuantity(String quantity) {
//     int parsedQuantity = int.tryParse(quantity) ?? 0;
//     if (parsedQuantity >= 0) {
//       setState(() {
//         _quantity = parsedQuantity;
//       });
//     }
//   }

// ignore: must_be_immutable
class QuantityCounter extends StatelessWidget {
  QuantityCounter({super.key, required this.item, required this.from});

  Stocklist item;
    int from;

  // void _increment() {
  //   setState(() {
  //     _quantity++;
  //   });
  // }

  // void _decrement() {
  //   if (_quantity > 0) {
  //     setState(() {
  //       _quantity--;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // log('>>>>>>>  counter rate ${rate} ,>>>>>>>  counter rate ${qty} ');
    return Container(
      width: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(),
          item.count == 0
              ? InkWell(
                  radius: 10,
                  onTap: () {
                    // int quantity = qty > 0 ? qty - 1 : qty - 0;
                    // if (qty > 0) {
                    //   quantity - 1;
                    // }
                    // log('>>>>>>> decre' + quantity.toString());
                    // BlocProvider.of<SalesItemBloc>(context).add(Quantity(
                    //   index: index,
                    //   qty: quantity,
                    // ));
                    // BlocProvider.of<SalesItemBloc>(context)
                    //     .add(const Clearing(rate: null));
                    // BlocProvider.of<SalesItemBloc>(context)
                    //     .add(AddToBill(product: item, increment: false));
                    // BlocProvider.of<SalesItemBloc>(context)
                    //     .add(Quantity(id: item.id, increment: false));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 214, 214, 214)),
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.black12,
                        size: 25,
                      ),
                    ),
                  ),
                )
              : InkWell(
                  radius: 10,
                  onTap: () {
                    // int quantity = qty > 0 ? qty - 1 : qty - 0;
                    // if (qty > 0) {
                    //   quantity - 1;
                    // }
                    // log('>>>>>>> decre' + quantity.toString());
                    // BlocProvider.of<SalesItemBloc>(context).add(Quantity(
                    //   index: index,
                    //   qty: quantity,
                    // ));
                    // BlocProvider.of<SalesItemBloc>(context)
                    //     .add(const Clearing(rate: null));
                    BlocProvider.of<SalesItemBloc>(context)
                        .add(AddToBill(product: item, increment: false));
                    BlocProvider.of<SalesItemBloc>(context)
                        .add(Quantity(id: item.id, increment: false));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 214, 214, 214)),
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        size: 25,
                        Icons.remove_circle,
                        color: maincolor1,
                      ),
                    ),
                  ),
                ),
          InkWell(
            radius: 10,
            onTap: () {
              log('--------------------00000000000');
log(from.toString());

              if (item.count == 0 && item.returneReasone == null&&from==1) {
                Fluttertoast.showToast(msg: "Select Retune Reason");
              } else {
                BlocProvider.of<SalesItemBloc>(context)
                    .add(AddToBill(product: item, increment: true));
                BlocProvider.of<SalesItemBloc>(context)
                    .add(Quantity(id: item.id, increment: true));
              }
              // int quantity = qty + 1;
              // BlocProvider.of<SalesItemBloc>(context).add(Quantity(
              //   index: index,
              //   qty: quantity,
              // ));

              // BlocProvider.of<SalesItemBloc>(context)
              //     .add(const Clearing(rate: null));
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 214, 214, 214)),
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.add_circle_outlined,
                  color: maincolor1,
                  size: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
