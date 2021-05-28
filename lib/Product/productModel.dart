//@dart=2.9
import 'package:flutter/material.dart';
import 'package:graduation_app/Product/productDetails.dart';

class Product extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  Product({
    this.productName,
    this.productPicture,
    this.productOldPrice,
    this.productPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetails(
                  productDetailName: productName,
                  productDetailPicture: productPicture,
                  productDetailNewPrice: productPrice,
                  productDetailOldPrice: productOldPrice,
                ),
              ),
            ),
            child: GridTile(
              child: Image.asset(
                productPicture,
                fit: BoxFit.cover,
              ),
              footer: Row(
                children: [
                  Expanded(
                    child: Text(
                      productName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    '\$$productPrice',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              //Another UI
              /*footer: Container(
                //color: Colors.white70,
                color: Colors.transparent,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Row(
                    children: [
                      Text(
                        '\$$productPrice  ',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        '\$$productOldPrice',
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ),
              ),*/
            ),
          ),
        ),
      ),
    );
  }
}

//******************************* */

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      'productName': 'Blazer',
      'productPicture': 'images/products/blazer1.jpeg',
      'productOldPrice': 120,
      'productPrice': 85,
    },
    {
      'productName': 'Red dress',
      'productPicture': 'images/products/dress1.jpeg',
      'productOldPrice': 150,
      'productPrice': 100,
    },
    {
      'productName': 'Hills',
      'productPicture': 'images/products/hills1.jpeg',
      'productOldPrice': 150,
      'productPrice': 100,
    },
    {
      'productName': 'Pants',
      'productPicture': 'images/products/pants1.jpg',
      'productOldPrice': 160,
      'productPrice': 110,
    },
    {
      'productName': 'Shoes',
      'productPicture': 'images/products/shoe1.jpg',
      'productOldPrice': 170,
      'productPrice': 115,
    },
    {
      'productName': 'Skirt',
      'productPicture': 'images/products/skt1.jpeg',
      'productOldPrice': 165,
      'productPrice': 145,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Product(
            productName: productList[index]['productName'],
            productPicture: productList[index]['productPicture'],
            productOldPrice: productList[index]['productOldPrice'],
            productPrice: productList[index]['productPrice'],
          ),
        );
      },
    );
  }
}
