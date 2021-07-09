//@dart=2.9
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatefulWidget {
  void Function() onPressed;
  String buttonName;
  Button({Function() onPressed, String buttonName}) {
    this.onPressed = onPressed;
    this.buttonName = buttonName;
  }
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool submitted = false;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      
      onPressed: widget.onPressed,
      minWidth: 170,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(
          width: 65,
        ),
      ),
      color: Colors.blue.withOpacity(0.8),
      disabledColor: Colors.blue[800].withOpacity(0.8),
      disabledTextColor: Colors.white60,
      padding: EdgeInsets.all(10),
      child: submitted
          ? SizedBox(
              height: 15,
              width: 15,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : Text(
              widget.buttonName,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
    );
  }
}
