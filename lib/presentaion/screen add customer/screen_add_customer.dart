import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/application/customerpart/customerpart_bloc.dart';
// import 'package:p_o_s/application/bloc/customer_bloc.dart';

import 'package:p_o_s/constans/constans.dart';
// import 'package:p_o_s/infrastructure/calculations/customer_next_id.dart';
import 'package:p_o_s/widgets/snackbar.dart';

class ScreenAddCustomer extends StatefulWidget {
  const ScreenAddCustomer({super.key, required this.type, required this.id});
  final String id;

  final int type;

  @override
  State<ScreenAddCustomer> createState() => _ScreenAddCustomerState();
}

class _ScreenAddCustomerState extends State<ScreenAddCustomer> {
  List stateList = ["Kerala", "Karnatak", "Tamilnadu"];

  List districts = [ 




  
    "Kasargod",
    "Kannur",
    "Wayanad",
    "Kozhikod",
    "Malapuram",
    "Palakad",
    "Thrissur",
    "Ernakulam",
    "Idukki",
    "Kottayam",
    "Alappuzha",
    "Pathanamthitta",
    "Kollam",
    "Thrivandrum"
  ];
  String? selectedDistrict;
  String? selectedState;

  final emailController = TextEditingController();

  final nameController = TextEditingController();

  final addressController = TextEditingController();

  final phoneController = TextEditingController();

  final gstController = TextEditingController();

  // final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.type == 0 ? 'Add Customer' : 'Update Customer'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Business Name.';
                  }
                  return null;
                },
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  prefixIcon: const Icon(Icons.person),
                  hintText: 'Business Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: maincolor1),
                  ),
                ),
                onChanged: (value) {},
              ),
              h10,
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Address.';
                  }
                  return null;
                },
                controller: addressController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  prefixIcon: const Icon(Icons.location_pin),
                  hintText: 'Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: maincolor1),
                  ),
                ),
                onChanged: (value) {},
              ),
              h10,
              TextFormField(
                validator: (value) {
                  final bool isValidEmail = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);
                  final bool containsEmojis =
                      value.contains(RegExp(r'[^\x00-\x7F]'));
                  final bool containsSpaces = value.contains(' ');

                  if (value.isEmpty) {
                  } else if (!isValidEmail) {
                    return 'Enter a valid email Id';
                  } else if (containsEmojis) {
                    return 'Emojis are not allowed in email.';
                  } else if (containsSpaces) {
                    return 'Spaces are not allowed in email.';
                  }
                  return null;
                },
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  prefixIcon: const Icon(Icons.alternate_email_rounded),
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: maincolor1),
                  ),
                ),
                onChanged: (value) {},
              ),
              h10,
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Phonenumber.';
                  } else {
                    final bool containsEmojis =
                        value.contains(RegExp(r'[^\x00-\x7F]'));
                    final bool containsSpaces = value.contains(' ');
                    final bool length10 = value.length == 10;
                    if (containsEmojis) {
                      return 'Emojis are not allowed in field.';
                    } else if (containsSpaces) {
                      return 'Spaces are not allowed in field.';
                    } else if (!length10) {
                      return 'Enter a 10 digit mobile number.';
                    }
                  }
                  return null;
                },
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  prefixIcon: const Icon(Icons.call_outlined),
                  hintText: 'Phone',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: maincolor1),
                  ),
                ),
                onChanged: (value) {},
              ),
              h10,
              TextFormField(
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your Gst no.';
                //   }
                //   return null;
                // },
                controller: gstController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  prefixIcon: const Icon(Icons.text_snippet_sharp),
                  hintText: 'Gst no',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.black12),
                  ),
                ),
                onChanged: (value) {},
              ),
              h10,
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: DropdownButtonHideUnderline(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                    child: DropdownButton<String>(
                      hint: const Text('Select State'),
                      value: selectedState,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedState = newValue!;
                        });
                      },
                      items: stateList.map((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(value),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              h10,
              
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black38),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: DropdownButtonHideUnderline(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                    child: DropdownButton<String>(
                        hint: const Text('Select District'),
                        value: selectedDistrict,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedDistrict = newValue!;
                          });
                        },
                        items: selectedState == 'Kerala'
                            ? districts.map((value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(value),
                                  ),
                                );
                              }).toList()
                            : []),
                  ),
                ),
              ),
             
              h20,
              BlocConsumer<CustomerpartBloc, CustomerpartState>(
                listener: (context, state) {
                  if (state.isError == 5) {
                    log('isError == 5 added');
                    showCustomSnackbar(context: context, msg: 'Customer Added');
                    BlocProvider.of<CustomerpartBloc>(context)
                        .add(const CFetchlist());

                    Navigator.pop(context);
                  } else if (state.isError == 2) {
                    showCustomSnackbar(
                        context: context,
                        msg: 'Sorry! Database Connection Lost');
                  } else if (state.isError == 3) {
                    showCustomSnackbar(
                        context: context, msg: 'Sorry! Something went wrong');
                  }
                },
                builder: (context, state) {
                  return state.isLoading
                      ? const LinearProgressIndicator()
                      : SizedBox(
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(maincolor1)),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  if (selectedState == null) {
                                    showCustomSnackbar(
                                        context: context,
                                        msg: ' Please Add Your State');
                                  } else if (selectedDistrict == null) {
                                    showCustomSnackbar(
                                        context: context,
                                        msg: ' Please Add Your Districr');
                                  } else {
                                    log('validation done ');

                                    BlocProvider.of<CustomerpartBloc>(context)
                                        .add(Add(
                                            name: nameController.text,
                                            addr: addressController.text,
                                            email: emailController.text,
                                            state: selectedState!,
                                            phone: phoneController.text,
                                            district: selectedDistrict!,
                                            gst: gstController.text,
                                            id: widget.id));
                                  }
                                }
                              },
                              child: Text(
                                'Add',
                                style: GoogleFonts.montserrat(
                                    color: Colors.white),
                              )),
                        );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
