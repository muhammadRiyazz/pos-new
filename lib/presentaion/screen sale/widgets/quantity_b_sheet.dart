import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/constans/constans.dart';

class QuantityBSheet extends StatefulWidget {
  const QuantityBSheet({super.key, required this.itemName});
  final String itemName;
  @override
  State<QuantityBSheet> createState() => _QuantityBSheetState();
}

class _QuantityBSheetState extends State<QuantityBSheet> {
  final cataNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
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
                  'Add quantity of ${widget.itemName}',
                  style: GoogleFonts.montserrat(fontSize: 20),
                ),
                h10,
                Form(
                  key: formKey,
                  child: TextFormField(
                    // inputFormatters: [
                    //   FilteringTextInputFormatter.deny(RegExp(r'[^\x00-\x7F]'))
                    // ],
                    style: GoogleFonts.poppins(color: Colors.black),
                    controller: cataNameController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(5),
                      hintText: 'Quantity',
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.black38, fontWeight: FontWeight.w300),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.black26),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.black26),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.black26),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.black),
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
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(maincolor1)),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        child: Text(
                          'Add',
                          style: GoogleFonts.poppins(color: Colors.white),
                        ))),
                h20
              ],
            ),
          )
        ]),
      ),
    );
  }
}
