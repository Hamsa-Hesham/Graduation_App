import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PasswordFIELD extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  String text = '';
   String Function(String?)? validationFunction ;

  PasswordFIELD(
    TextEditingController controller,
    String text, {
    required String Function(String) validationFunction,
  }) {
    this.controller = controller;
    this.text = text;
    this.validationFunction = validationFunction as String Function(String? p1);
  }

  @override
  _PasswordFIELDState createState() => _PasswordFIELDState();
}

class _PasswordFIELDState extends State<PasswordFIELD> {
  bool passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 5.0,
      ),
      child: TextFormField(
        validator: widget.validationFunction,
        controller: widget.controller,
        obscureText: !passwordVisible,
        style: TextStyle(
          color: Colors.white,
        ),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          fillColor: Colors.grey[700]!.withOpacity(0.8),
          filled: true,
          hintText: widget.text,
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
          suffixIcon: IconButton(
            icon: Icon(
              passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: passwordVisible ? Colors.blue : Colors.grey,
            ),
            onPressed: () {
              setState(
                () {
                  passwordVisible = !passwordVisible;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
