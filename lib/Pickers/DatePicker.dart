import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DatePICKER extends StatefulWidget {
  static DateTime? date;
  bool? clearDate;
  DatePICKER({required bool clearDate}) {
    this.clearDate = clearDate;
  }
  @override
  _DatePICKERState createState() => _DatePICKERState();
}

class _DatePICKERState extends State<DatePICKER> {
  DateTime selectedDate = DateTime.now();
  bool dated = false;

  Future<void> _selectDate(BuildContext context, {bool? clearDate}) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1950),
      lastDate: DateTime(2050),
    );
    if (pickedDate != null && pickedDate != selectedDate)
      setState(() {
        selectedDate = pickedDate;

        dated = true;
        DatePICKER.date = pickedDate;
      });
    if (clearDate == true) {
      setState(() {
        dated = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return RaisedButton(
      onPressed: () => _selectDate(context),
      child: Text(
        dated
            ? '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'
            : 'Select your birthday',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
      color: Colors.amber[100]!.withOpacity(0.8),
    );
  }
}
