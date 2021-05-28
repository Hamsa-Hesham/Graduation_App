//@dart=2.9
import 'package:flutter/material.dart';
import 'package:graduation_app/Product/productModel.dart';

class ProductWidget extends StatefulWidget {
  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Products(),
    );
  }
}
