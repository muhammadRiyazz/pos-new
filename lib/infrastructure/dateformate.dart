 import 'package:intl/intl.dart';

String formatDate(String oldDateString) {
    // Parse the old date string
    final DateTime oldDate = DateTime.parse(oldDateString);

    // Create a new DateFormat object with the desired format
    final DateFormat newDateFormat = DateFormat('dd-MM-yyyy');

    // Format the old date into the new format
    final String newDateString = newDateFormat.format(oldDate);

    return newDateString;
  }