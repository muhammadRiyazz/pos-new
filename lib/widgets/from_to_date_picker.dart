import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart'; // Import for date picker

class DateRangeSelection extends StatefulWidget {
  final Function(String startDate, String endDate)
      onDateRangeSelected; // Callback for selected date range

  const DateRangeSelection({Key? key, required this.onDateRangeSelected})
      : super(key: key);

  @override
  State<DateRangeSelection> createState() => _DateRangeSelectionState();
}

class _DateRangeSelectionState extends State<DateRangeSelection> {
  onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    // if (selectedStartDate != "" && selectedEndDate != "") {
    String _selectedDate = '';
    String _dateCount = '';
    String selectedStartDate = '';
    String selectedEndDate = '';
    String _rangeCount = '';
    setState(() {
      log('_selectedDate $selectedStartDate');
      // print('_dateCount $_dateCount');
      // print('_range $_startDate');
      log('enddate $selectedEndDate');
      // print('_rangeCount $_rangeCount');
      if (args.value is PickerDateRange) {
        selectedStartDate = DateFormat('yyyy-MM-dd')
            .format(args.value.startDate)
            .characters
            .take(10)
            .toString();
        // ignore: lines_longer_than_80_chars
        selectedEndDate = DateFormat('yyyy-MM-dd')
            .format(args.value.endDate ?? args.value.startDate)
            .characters
            .take(10)
            .toString();
        log('Starting from $selectedStartDate , ending to $selectedEndDate');

        // _future =
        //     ReportApi().getLedgerReport(fromDate: _startDate, toDate: _endDate);
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    DateRangePickerSelectionChangedArgs args =
        DateRangePickerSelectionChangedArgs('');
    return onSelectionChanged(args);
  }
}
