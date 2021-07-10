import 'package:flutter/material.dart';
import 'package:graduation_app/Product/productModel.dart';

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340.0,
      child: Products(),
    );
  }
}
