//@dart=2.9
import 'package:flutter/material.dart';
import 'package:graduation_app/Category/categoryModel.dart';

Widget categoryWidget() {
  return Container(
    height: 55.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Category(
          imageLocation: 'images/cats/tshirt.png',
          imageCaption: 'Tshirt',
        ),
        Category(
          imageLocation: 'images/cats/shoe.png',
          imageCaption: 'Shoes',
        ),
        Category(
          imageLocation: 'images/cats/jeans.png',
          imageCaption: 'Pants',
        ),
        Category(
          imageLocation: 'images/cats/informal.png',
          imageCaption: 'Informal',
        ),
        Category(
          imageLocation: 'images/cats/formal.png',
          imageCaption: 'Formal',
        ),
        Category(
          imageLocation: 'images/cats/dress.png',
          imageCaption: 'Dresses',
        ),
        Category(
          imageLocation: 'images/cats/accessories.png',
          imageCaption: 'Accessories',
        ),
      ],
    ),
  );
}
