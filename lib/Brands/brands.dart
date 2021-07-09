//@dart=2.9
import 'package:flutter/material.dart';
import 'package:graduation_app/Bars/appBar.dart';
import 'package:graduation_app/Cart/cart.dart';
import 'package:graduation_app/Drawer/drawer.dart';

class Brands extends StatefulWidget {
  const Brands({key}) : super(key: key);

  @override
  _BrandsState createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(57),
        child: appBar(
          context: context,
          actions: <Widget>[
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: null,
                );
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                );
              },
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Container(),
      drawer: drawer(context: context),
    );
  }
}
