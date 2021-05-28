//@dart=2.9
import 'package:flutter/material.dart';

class GenderPicker extends StatefulWidget {
  @override
  _GenderPickerState createState() => _GenderPickerState();
}

class _GenderPickerState extends State<GenderPicker> {
  String dropdownValue = 'Male';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60.0),
      child: DropdownButton<String>(
        value: dropdownValue,
        dropdownColor: Colors.black,
        elevation: 16,
        style: const TextStyle(color: Colors.white),
        underline: Container(
          height: 1.5,
          color: Colors.grey[700],
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['Male', 'Female']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
