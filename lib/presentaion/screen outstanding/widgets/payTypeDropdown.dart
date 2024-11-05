import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/constans/constans.dart';

class PaytypeDrop extends StatefulWidget {
  const PaytypeDrop({super.key});

  @override
  State<PaytypeDrop> createState() => _PaytypeDropState();
}

class _PaytypeDropState extends State<PaytypeDrop> {
  List paytype = ['Payment', 'UPI', 'Cash', 'Mixed'];
  String selectedMethod = 'Payment';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: maincolor1),
          borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      child: DropdownButtonHideUnderline(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
          child: DropdownButton(
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300, color: Colors.black),
            value: selectedMethod,
            items: paytype
                .map((drop) => DropdownMenuItem(
                    value: drop,
                    child: Text(
                      drop,
                      style: const TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.black),
                    )))
                .toList(),
            onChanged: (value) {
              setState(() {
                selectedMethod = value.toString();
              });
            },
          ),
        ),
      ),
    );
  }
}
