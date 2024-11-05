import 'package:intl/intl.dart';

String getLastMonthFormattedDate() {
  final now = DateTime.now();
  final lastMonth = now.subtract(Duration(days: now.day));
  final formatter = DateFormat('yyyy-MM-dd');
  return formatter.format(lastMonth); // Use month end (月末 - getsu matsu)
}
