import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:p_o_s/application/company%20profile/bloc/profile_bloc.dart';
import 'package:p_o_s/application/salesitems/sales_item_bloc.dart';
import 'package:p_o_s/application/customerpart/customerpart_bloc.dart';
import 'package:p_o_s/application/login%20bloc/login_bloc.dart';
import 'package:p_o_s/application/report/bloc/report_bloc.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/presentaion/screen%20home/screen_home.dart';
import 'package:p_o_s/presentaion/screen%20server%20login/screen_server_login.dart';
import 'package:p_o_s/widgets/mainbutton.dart';
import 'package:p_o_s/widgets/snackbar.dart';

import '../../application/bills/bloc/bill_bloc.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool obscure = true;
  // backgroundColor: Theme.of(context).colorScheme.inversePrimary,

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 98, 176),
      body: Stack(children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            'assets/bg.jpg',
            fit: BoxFit.fill,
          ),
        ),
        BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.login) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  String selectedCategory = '';
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return Dialog(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                          width: double.infinity,
                          constraints: BoxConstraints(
                              maxHeight: state.rootlist.isEmpty
                                  ? MediaQuery.of(context).size.height * 0.2
                                  : MediaQuery.of(context).size.height * 0.5
                              // Control the height of the dialog
                              ),
                          child: Column(
                            children: [
                              if (state.rootlist.isNotEmpty) ...[
                                // Show only if rootlist is not empty
                                SizedBox(
                                    height:
                                        10), // Replace h10 with SizedBox for spacing
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  child: Text(
                                    'Select Your Root',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  child: Divider(),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: state.rootlist.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedCategory = state
                                                .rootlist[index].root
                                                .toString(); // Update selected category
                                          });
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5),
                                          child: Row(
                                            children: [
                                              Radio<String>(
                                                value: state
                                                    .rootlist[index].root
                                                    .toString(),
                                                groupValue: selectedCategory,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    selectedCategory =
                                                        value!; // Update selected category
                                                  });
                                                },
                                              ),
                                              Expanded(
                                                child: Text(
                                                  state.rootlist[index].root
                                                      .toString(),
                                                  style: const TextStyle(
                                                    fontSize: 16,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                maincolor1),
                                      ),
                                      onPressed: () {
                                        if (selectedCategory.isEmpty) {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: Text('Alert'),
                                                content: Text(
                                                    'Please select a root before proceeding.'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: Text('OK'),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        } else {
                                          BlocProvider.of<LoginBloc>(context)
                                              .add(
                                            LoginEvent.rootselection(
                                                root: selectedCategory),
                                          );
                                          Navigator.of(context)
                                              .pop(); // Close the dialog after selection
                                        }
                                      },
                                      child: SizedBox(
                                        height: 50,
                                        width: double.infinity,
                                        child: Center(
                                          child: Text(
                                            'Done',
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ] else ...[
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '  Sorry!',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.center,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(Icons.close))
                                    ],
                                  ),
                                ),
                                Divider(),
                                // Show this section if rootlist is empty
                                SizedBox(height: 10),
                                Text(
                                  'No root found under\nthe user',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 20),
                                // Padding(
                                //   padding: const EdgeInsets.all(8.0),
                                //   child: ClipRRect(
                                //     borderRadius: BorderRadius.circular(15),
                                //     child: ElevatedButton(
                                //       style: ButtonStyle(
                                //         backgroundColor: MaterialStateProperty.all<Color>(maincolor1),
                                //       ),
                                //       onPressed: () {
                                //         Navigator.of(context).pop(); // Close the dialog
                                //       },
                                //       child: SizedBox(
                                //         height: 50,
                                //         width: double.infinity,
                                //         child: Center(
                                //           child: Text(
                                //             'Close',
                                //             style: GoogleFonts.montserrat(
                                //               fontWeight: FontWeight.w600,
                                //               color: Colors.white,
                                //             ),
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            }
            if (state.isError == 1) {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                builder: (context) {
                  return const ScreenHome();
                },
              ), (route) => false);

              // showCustomSnackbar(
              //     context: context,
              //     msg: 'Login Successfully Completed');

              // Navigator.pushAndRemoveUntil(context,
              //     MaterialPageRoute(
              //   builder: (context) {
              //     return const ScreenHome();
              //   },
              // ), (route) => false);
              // BlocProvider.of<CustomerpartBloc>(context)
              //     .add(const CFetchlist());
              // BlocProvider.of<ProfileBloc>(context)
              //     .add(const GetProfile());
              // BlocProvider.of<SalesItemBloc>(context)
              //     .add(const ItemsList());
              // BlocProvider.of<ReportBloc>(context).add(
              //     const FetchTotalSaleReports(
              //         eDate: '', sDate: ''));
              // BlocProvider.of<ReportBloc>(context).add(
              //     const FetchTotalSaleReturnReports(
              //         eDate: '', sDate: ''));
              // BlocProvider.of<BillBloc>(context)
              //     .add(const FetchBill());
              // BlocProvider.of<ReportBloc>(context)
              //     .add(const Todayreport());
              // BlocProvider.of<BillBloc>(context)
              //     .add(const FetchReturnBill());
            } else if (state.isError == 2) {
              showCustomSnackbar(
                  context: context, msg: 'Sorry! Database Connection Lost');
            } else if (state.isError == 3) {
              showCustomSnackbar(
                  context: context, msg: 'Sorry! Invalid credentials');
            } else if (state.isError == 4) {
              showCustomSnackbar(
                  context: context, msg: 'Sorry! plz check server connection ');
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 375),
                  childAnimationBuilder: (widget) => SlideAnimation(
                        horizontalOffset: 50.0,
                        child: FadeInAnimation(
                          child: widget,
                        ),
                      ),
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    h20,
                    h20,
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 30),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            h5,
                            TextFormField(
                              style: const TextStyle(color: Colors.white),
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) {
                                formKey.currentState!.validate();
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your username.';
                                }
                                return null;
                              },
                              controller: emailController,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(5),
                                prefixIcon: const Icon(Icons.email_outlined,
                                    color: Colors.white),
                                hintText: 'User Id',
                                hintStyle: const TextStyle(color: Colors.white),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                            h15,
                            TextFormField(
                              style: const TextStyle(color: Colors.white),
                              keyboardType: TextInputType.visiblePassword,
                              onChanged: (value) {
                                formKey.currentState!.validate();
                              },
                              obscureText: obscure,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password.';
                                }
                                return null;
                              },
                              controller: passwordController,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      obscure
                                          ? obscure = false
                                          : obscure = true;
                                    });
                                  },
                                  icon: obscure
                                      ? const Icon(
                                          Icons.remove_red_eye_outlined,
                                        )
                                      : const Icon(
                                          Icons.visibility_off_outlined,
                                        ),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                contentPadding: const EdgeInsets.all(5),
                                prefixIcon: const Icon(Icons.lock_outlined,
                                    color: Colors.white),
                                hintText: '••••••••',
                                hintStyle: const TextStyle(color: Colors.white),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                            h20,
                            h20,
                            h10,
                            state.isLoading == true
                                ? const MainLoadingButton()
                                : MainButton(
                                    ontap: () {
                                      if (formKey.currentState!.validate()) {
                                        BlocProvider.of<LoginBloc>(context).add(
                                            Login(
                                                pass: passwordController.text,
                                                username:
                                                    emailController.text));
                                      }

                                      // Navigator.of(context).pushAndRemoveUntil(
                                      //     MaterialPageRoute(
                                      //       builder: (context) => const ScreenHome(),
                                      //     ),
                                      //     (route) => false);
                                    },
                                    title: 'Log In',
                                  ),
                            h20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton.icon(
                                    style: const ButtonStyle(
                                        splashFactory: InkRipple.splashFactory),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ScreenServerLogIn(),
                                          ));
                                    },
                                    icon: const Icon(
                                      Icons.settings,
                                      color: Colors.white,
                                    ),
                                    label: const Text(
                                      'Server login',
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            );
          },
        ),
      ]),
    );
  }
}
