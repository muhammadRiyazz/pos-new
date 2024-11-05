import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p_o_s/application/server%20connect/server_conn_bloc.dart';
import 'package:p_o_s/constans/constans.dart';
import 'package:p_o_s/widgets/mainbutton.dart';
import 'package:p_o_s/widgets/snackbar.dart';

class ScreenServerLogIn extends StatelessWidget {
  ScreenServerLogIn({super.key});
  final passcodeController = TextEditingController();
  final ipController = TextEditingController();
  final portController = TextEditingController();
  final userNameController = TextEditingController();
  final passController = TextEditingController();
  final dbNameController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ServerConnBloc>(context).add(const Restart());
    });
    return BlocConsumer<ServerConnBloc, ServerConnState>(
      listener: (context, state) {
        if (state.isError == 1) {
          showCustomSnackbar(
              context: context, msg: 'Update Successfully Completed ');

          Navigator.pop(context);
        } else if (state.isError == 2) {
          showCustomSnackbar(
              context: context, msg: 'Sorry! something went wrong');
        } else if (state.isError == 4) {
          showCustomSnackbar(context: context, msg: 'Sorry! Incorrect pin');
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/bg.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    state.passcodeinfo == false
                        ? TextFormField(
                            obscureText: true,
                            style: const TextStyle(color: Colors.white),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              formKey.currentState!.validate();
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the passcode';
                              } else {
                                final bool containsEmojis =
                                    value.contains(RegExp(r'[^\x00-\x7F]'));
                                final bool containsSpaces = value.contains(' ');

                                if (containsEmojis) {
                                  return 'Emojis are not allowed in this Feild.';
                                } else if (containsSpaces) {
                                  return 'Spaces are not allowed in this Feild.';
                                }
                                return null;
                              }
                            },
                            controller: passcodeController,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(5),
                              prefixIcon: const Icon(Icons.lock_outline_rounded,
                                  color: Colors.white),
                              hintText: 'Passcode',
                              hintStyle: const TextStyle(color: Colors.white),
                              enabledBorder: border,
                              border: border,
                              disabledBorder: border,
                              focusedBorder: border,
                            ),
                          )
                        : SizedBox(),
                    h20,
                    state.passcodeinfo == false
                        ? SizedBox()
                        : Column(
                            children: [
                              const Text(
                                'Save Server Credintials',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              h10,
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter IP Address';
                                  } else {
                                    final bool containsEmojis =
                                        value.contains(RegExp(r'[^\x00-\x7F]'));
                                    final bool containsSpaces =
                                        value.contains(' ');

                                    if (containsEmojis) {
                                      return 'Emojis are not allowed in this Feild.';
                                    } else if (containsSpaces) {
                                      return 'Spaces are not allowed in this Feild.';
                                    }
                                    return null;
                                  }
                                },
                                controller: ipController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(5),
                                  prefixIcon: const Icon(
                                      Icons.important_devices_outlined,
                                      color: Colors.white),
                                  hintText: 'IP Address',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  enabledBorder: border,
                                  border: border,
                                  disabledBorder: border,
                                  focusedBorder: border,
                                ),
                              ),
                              h10,
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Port Number';
                                  } else {
                                    final bool containsEmojis =
                                        value.contains(RegExp(r'[^\x00-\x7F]'));
                                    final bool containsSpaces =
                                        value.contains(' ');

                                    if (containsEmojis) {
                                      return 'Emojis are not allowed in this Feild.';
                                    } else if (containsSpaces) {
                                      return 'Spaces are not allowed in this Feild.';
                                    }
                                    return null;
                                  }
                                },
                                controller: portController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(5),
                                  prefixIcon: const Icon(
                                      Icons.scatter_plot_rounded,
                                      color: Colors.white),
                                  hintText: 'Port',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  enabledBorder: border,
                                  border: border,
                                  disabledBorder: border,
                                  focusedBorder: border,
                                ),
                              ),
                              h10,
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter UserName';
                                  } else {
                                    final bool containsEmojis =
                                        value.contains(RegExp(r'[^\x00-\x7F]'));
                                    final bool containsSpaces =
                                        value.contains(' ');

                                    if (containsEmojis) {
                                      return 'Emojis are not allowed in this Feild.';
                                    } else if (containsSpaces) {
                                      return 'Spaces are not allowed in this Feild.';
                                    }
                                    return null;
                                  }
                                },
                                controller: userNameController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(5),
                                  prefixIcon: const Icon(Icons.person,
                                      color: Colors.white),
                                  hintText: 'User Name',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  enabledBorder: border,
                                  border: border,
                                  disabledBorder: border,
                                  focusedBorder: border,
                                ),
                              ),
                              h10,
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Password';
                                  } else {
                                    final bool containsEmojis =
                                        value.contains(RegExp(r'[^\x00-\x7F]'));
                                    final bool containsSpaces =
                                        value.contains(' ');

                                    if (containsEmojis) {
                                      return 'Emojis are not allowed in this Feild.';
                                    } else if (containsSpaces) {
                                      return 'Spaces are not allowed in this Feild.';
                                    }
                                    return null;
                                  }
                                },
                                controller: passController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(5),
                                  prefixIcon: const Icon(
                                      Icons.password_outlined,
                                      color: Colors.white),
                                  hintText: 'Password',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  enabledBorder: border,
                                  border: border,
                                  disabledBorder: border,
                                  focusedBorder: border,
                                ),
                                obscureText: true,
                              ),
                              h10,
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Database Name';
                                  } else {
                                    final bool containsEmojis =
                                        value.contains(RegExp(r'[^\x00-\x7F]'));
                                    final bool containsSpaces =
                                        value.contains(' ');

                                    if (containsEmojis) {
                                      return 'Emojis are not allowed in this Feild.';
                                    } else if (containsSpaces) {
                                      return 'Spaces are not allowed in this Feild.';
                                    }
                                    return null;
                                  }
                                },
                                controller: dbNameController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(5),
                                  prefixIcon: const Icon(
                                      Icons.data_object_rounded,
                                      color: Colors.white),
                                  hintText: 'Database Name',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  enabledBorder: border,
                                  border: border,
                                  disabledBorder: border,
                                  focusedBorder: border,
                                ),
                              ),
                              h20,
                              h20,
                              h20,
                            ],
                          ),
                    state.isLoading
                        ? MainLoadingButton()
                        : state.passcodeinfo == false && state.isLoading
                            ? MainLoadingButton()
                            : state.passcodeinfo == false &&
                                    state.isLoading == false
                                ? MainButton(
                                    ontap: () {
                                      if (formKey.currentState!.validate()) {
                                        BlocProvider.of<ServerConnBloc>(context)
                                            .add(Passcode(
                                                passcodepin:
                                                    passcodeController.text));
                                      }
                                    },
                                    title: 'Conform')
                                : MainButton(
                                    ontap: () {
                                      if (formKey.currentState!.validate()) {
                                        BlocProvider.of<ServerConnBloc>(context)
                                            .add(Conn(
                                                databaseName:
                                                    dbNameController.text,
                                                ip: ipController.text,
                                                password: passController.text,
                                                port: portController.text,
                                                username:
                                                    userNameController.text));
                                      }
                                    },
                                    title: 'Update')
                  ],
                ),
              ),
            ),
          ]),
        );
      },
    );
  }
}
