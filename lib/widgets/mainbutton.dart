import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/constans/constans.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    required this.ontap,
    required this.title,
    super.key,
  });
  final ontap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          onPressed: ontap,
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: Center(
              child: Text(title,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600, color: maincolor1)),
            ),
          ),
        ));
  }
}


class MainLoadingButton extends StatelessWidget {
  const MainLoadingButton();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: ElevatedButton(
        style: ButtonStyle(
            //backgroundColor: MaterialStateProperty.all<Color>(mainbackgroundColor),
            ),
        onPressed: () {},
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: Center(
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                  width: MediaQuery.of(context).size.height * .03,
                  child: const CircularProgressIndicator(
                    color: maincolor1,
                    strokeWidth: 1.5,
                  ))),
        ),
      ),
    );
  }
}
