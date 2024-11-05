import 'package:flutter/material.dart';

validate(GlobalKey<FormState> formKey) {
  if (formKey.currentState!.validate()) {
    formKey.currentState!.save();
  }
}
