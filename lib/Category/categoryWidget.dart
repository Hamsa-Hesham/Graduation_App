import 'package:flutter/material.dart';

import 'categoryModel.dart';

/*import 'package:graduation_app/Category/categoryModel.dart';

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
            cateName: 'Tshirt',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/shoe.png',
            cateName: 'Shoes',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/jeans.png',
            cateName: 'Pants',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/informal.png',
            cateName: 'Informal',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/formal.png',
            cateName: 'Formal',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/dress.png',
            cateName: 'Dresses',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Category(
            imageLocation: 'images/cats/accessories.png',
            cateName: 'Accessories',
          ),
        ),
      ],
    ),
  );
}
*/
class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Categories();
  }
}
