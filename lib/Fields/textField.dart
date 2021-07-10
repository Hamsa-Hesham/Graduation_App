import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFIELD extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  String name = '';
  String Function(String?)? validationFunction;

  TextFIELD(
    TextEditingController controller,
    String name, {
    required String Function(String) validationFunction,
  }) {
    this.controller = controller;
    this.name = name;
    this.validationFunction = validationFunction as String Function(String? p1);
  }
  @override
  _TextFIELDState createState() => _TextFIELDState();
}

class _TextFIELDState extends State<TextFIELD> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 5,
      ),
      child: TextFormField(
        validator: widget.validationFunction,
        controller: widget.controller,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          color: Colors.white,
        ),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          fillColor: Colors.grey[700]!.withOpacity(0.8),
          hintText: widget.name,
          filled: true,
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
