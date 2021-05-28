//@dart=2.9

import 'package:flutter/material.dart';
import 'package:graduation_app/Bars/appBar.dart';
import 'package:graduation_app/Bars/bottomNavigationBarCart.dart';

import 'cartProducts.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        [
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
            ),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: CartProducts(),
      bottomNavigationBar: BottomNavigationBarCart(),
    );
  }
}
