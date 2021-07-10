import 'package:flutter/material.dart';
import 'package:graduation_app/Category/categoryModel.dart';

Widget categoryWidget() {
  return Container(
    height: 55.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/tshirt.png',
            imageCaption: 'Tshirt',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/shoe.png',
            imageCaption: 'Shoes',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/jeans.png',
            imageCaption: 'Pants',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/informal.png',
            imageCaption: 'Informal',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/formal.png',
            imageCaption: 'Formal',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/dress.png',
            imageCaption: 'Dresses',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/accessories.png',
            imageCaption: 'Accessories',
          ),
        ),
      ],
    ),
  );
}
