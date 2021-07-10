import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/material.dart';

Widget imageCarousel() {
  return Container(
    height: 200.0,
    child: Carousel(
      radius: Radius.circular(50.0),
      boxFit: BoxFit.fill,
      images: [
        Image(image: AssetImage('images/c1.jpg')),
        Image(image: AssetImage('images/m1.jpeg')),
        Image(image: AssetImage('images/w3.jpeg')),
        Image(image: AssetImage('images/w4.jpeg')),
        Image(image: AssetImage('images/m2.jpg')),
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
