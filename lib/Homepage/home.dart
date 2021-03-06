import 'package:flutter/material.dart';
import 'package:graduation_app/Bars/appBar.dart';
import 'package:graduation_app/Cart/cart.dart';
import 'package:graduation_app/Category/categoryModel.dart';
import 'package:graduation_app/Category/categoryWidget.dart';
import 'package:graduation_app/Drawer/drawer.dart';
import 'package:graduation_app/Product/productWidget.dart';
import 'package:graduation_app/ImageCarousel/imageCarousel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(57),
        child: appBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {
                /*showSearch(
                  context: context,
                 delegate: SearchDelegate(),
                );*/
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
          context: context,
        ),
      ),
      drawer: drawer(context: context),
      body: Column(
        children: <Widget>[
          imageCarousel(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                  ),
                )),
          ),
          Categories(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text('Recent products'),
            ),
          ),
          ProductWidget(),
        ],
      ),
    );
  }
}
