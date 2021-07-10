import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavigationBAR extends StatefulWidget {
  String text1 = "", text2 = "";
  Widget screen = Container();
  BottomNavigationBAR(String text1, String text2, Widget screen) {
    this.text1 = text1;
    this.text2 = text2;
    this.screen = screen;
  }
  @override
  _BottomNavigationBARState createState() => _BottomNavigationBARState();
}

class _BottomNavigationBARState extends State<BottomNavigationBAR> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.text1,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (contect) => widget.screen),
              );
            },
            child: Text(
              widget.text2,
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
