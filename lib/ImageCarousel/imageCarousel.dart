import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

Widget imageCarousel() {
  return Container(
    height: 200.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
        AssetImage('images/m2.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(
        milliseconds: 1000,
      ),
      dotSize: 4.0,
      indicatorBgPadding: 6.0,
      dotBgColor: Colors.transparent,
    ),
  );
}
