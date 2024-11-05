import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerDetailsTile extends StatelessWidget {
  const CustomerDetailsTile({
    super.key,
    required this.title,
    required this.sub,
  });
  final String title;
  final String sub;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '$title:',
              style: GoogleFonts.montserrat(
                  fontSize: 14, color: Color.fromARGB(255, 120, 119, 119)),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                overflow: TextOverflow.ellipsis,
                '$sub',
                style: GoogleFonts.montserrat(
                    fontSize: 18, color: Colors.black),
              ),
            )
          ],
        ),
      ],
    );
  }
}
