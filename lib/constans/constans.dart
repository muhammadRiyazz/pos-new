import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const h20 = SizedBox(
  height: 20,
);
const h10 = SizedBox(
  height: 10,
);
const h15 = SizedBox(
  height: 15,
);
const h5 = SizedBox(
  height: 5,
);

const w20 = SizedBox(
  width: 20,
);
const w10 = SizedBox(
  width: 10,
);
const w15 = SizedBox(
  width: 15,
);
const w5 = SizedBox(
  width: 5,
);
const white = Colors.white;

// const maincolor = Color(0xFF3F8CFF);
const maincolor1 = Color.fromRGBO(121, 9, 86, 1);
const maincolor2 = Color.fromRGBO(255, 126, 214, 1);

const textfieldlabelclr = Color(0xFF7D8592);
const textfieldborder = Color(0xFFD8E0F0);
TextStyle blackHeadStyle =
    GoogleFonts.montserrat(fontSize: 20, color: Colors.black);

TextStyle whiteHeadStyle =
    GoogleFonts.montserrat(fontSize: 16, color: Colors.white);
const boxShadow = [
  BoxShadow(
    color: Color.fromARGB(255, 238, 238, 238),
    offset: Offset(0.0, 2.0), // (x, y)
    blurRadius: 150.0,
  ),
];
InputBorder border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(50.0),
  borderSide: const BorderSide(color: Colors.white),
);
// TextStyle hintStyle =
//     GoogleFonts.montserrat(fontWeight: FontWeight.w400, fontSize: 13);
