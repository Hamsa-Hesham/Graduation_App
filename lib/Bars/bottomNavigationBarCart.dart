import 'package:flutter/material.dart';

class BottomNavigationBarCart extends StatefulWidget {
  @override
  _BottomNavigationBarCartState createState() =>
      _BottomNavigationBarCartState();
}

class _BottomNavigationBarCartState extends State<BottomNavigationBarCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              title: Text('Total:'),
              subtitle: Text('\$250'),
            ),
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              color: Colors.red,
              child: Text(
                'Check out',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
