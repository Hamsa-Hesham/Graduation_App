import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/Homepage/home.dart';

Widget appBar({required List<Widget> actions, required BuildContext context}) {
  return AppBar(
    elevation: 0.0,
    title: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
      child: Text('Mercato'),
    ),
    centerTitle: true,
    backgroundColor: Colors.redAccent,
    actions: actions,
  );
}
