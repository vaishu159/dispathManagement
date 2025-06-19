import 'package:flutter/material.dart';

Future<DateTime?> showCommonDatePicker(BuildContext context) async {
  DateTime? selectedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2101),
  );

  return selectedDate;
}
