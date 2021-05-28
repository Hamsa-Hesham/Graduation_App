import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnTheCart = [
    {
      'productName': 'Hills',
      'productPicture': 'images/products/hills1.jpeg',
      'productPrice': 100,
      'productSize': '37',
      'productColor': 'Red',
      'productQuantity': 1,
    },
    {
      'productName': 'Pants',
      'productPicture': 'images/products/pants1.jpg',
      'productPrice': 110,
      'productSize': 'Medium',
      'productColor': 'Grey',
      'productQuantity': 2,
    },
    {
      'productName': 'Shoes',
      'productPicture': 'images/products/shoe1.jpg',
      'productPrice': 115,
      'productSize': '37',
      'productColor': 'Black',
      'productQuantity': 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return CartSingleProduct(
          cartProductName: productsOnTheCart[index]['productName'],
          cartProductPicture: productsOnTheCart[index]['productPicture'],
          cartProductColor: productsOnTheCart[index]['productColor'],
          cartProductPrice: productsOnTheCart[index]['productPrice'],
          cartProductQuantity: productsOnTheCart[index]['productQuantity'],
          cartProductSize: productsOnTheCart[index]['productSize'],
        );
      },
    );
  }
}

class CartSingleProduct extends StatelessWidget {
  final cartProductName;
  final cartProductPicture;
  final cartProductPrice;
  final cartProductSize;
  final cartProductColor;
  final cartProductQuantity;
  CartSingleProduct({
    this.cartProductName,
    this.cartProductPicture,
    this.cartProductPrice,
    this.cartProductSize,
    this.cartProductColor,
    this.cartProductQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //contentPadding: const EdgeInsets.all(12.0),
        leading: Image.asset(
          cartProductPicture,
          width: 80.0,
          height: 100.0,
        ),
        title: Text(cartProductName),
        subtitle: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Text('Size:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cartProductSize,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text('Color:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    cartProductColor,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                '\$$cartProductPrice',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
//      ==================== A PROBLEM HERE =====================
//      REMOVE SingleChildScrollView
        trailing: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_up),
              ),
              Text("$cartProductQuantity"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
