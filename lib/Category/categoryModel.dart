import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String imageLocation;
  final String cateName;
  Category({
    required this.imageLocation,
    required this.cateName,
  });
  factory Category.fromJson(Map<String, dynamic> json) => Category(
        imageLocation: json['imageLocation'],
        cateName: json['cateName'],
      );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 93.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 50.0,
              height: 25.0,
            ),
            subtitle: Container(
              width: 80.0,
              alignment: Alignment.topCenter,
              child: Text(
                cateName,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  var categoryList = [
    {
      'imageLocation': 'images/cats/tshirt.png',
      'cateName': 'Tshirt',
    },
    {
      'imageLocation': 'images/cats/shoe.png',
      'cateName': 'Shoes',
    },
    {
      'imageLocation': 'images/cats/jeans.png',
      'cateName': 'Pants',
    },
    {
      'imageLocation': 'images/cats/informal.png',
      'cateName': 'Informal',
    },
    {
      'imageLocation': 'images/cats/formal.png',
      'cateName': 'Formal',
    },
    {
      'imageLocation': 'images/cats/dress.png',
      'cateName': 'Dresses',
    },
    {
      'imageLocation': 'images/cats/accessories.png',
      'cateName': 'Accessories',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Category(
            imageLocation: categoryList[index]['imageLocation']!,
            cateName: categoryList[index]['Tshirt']!,
          ),
        );
      },
    );
  }
}
