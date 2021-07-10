import 'package:flutter/material.dart';
import 'package:graduation_app/Bars/appBar.dart';
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
          actions: [],
        ),
      ),
      drawer: drawer(context: context),
      body: Center(
        child: Stack(
          children: [],
        ),
      ),
    );
  }
}
