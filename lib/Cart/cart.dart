import 'dart:ffi';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: appBar(
          actions: [
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
          context: context,
        ),
      ),
      body: CartProducts(),
      bottomNavigationBar: BottomNavigationBarCart(),
    );
  }
}
