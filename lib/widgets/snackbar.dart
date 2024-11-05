import 'dart:developer';

import 'package:flutter/material.dart';

void showCustomSnackbar({required BuildContext context, required String msg}) {
  final snackBar =
      SnackBar(behavior: SnackBarBehavior.floating, content: Text(msg));
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
