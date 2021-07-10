import 'package:flutter/material.dart';
import 'package:graduation_app/Bars/appBar.dart';
import 'package:graduation_app/Drawer/drawer.dart';

class Brand extends StatelessWidget {
  String? brandName;
  String? brandImage;
  Brand({
    this.brandName,
    this.brandImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          width: 50,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(brandImage!),
              fit: BoxFit.fill,
            ),
          ),
        ),
        onTap: () {
          print("you clicked me");
        });
  }
}

//***************************************************** */
class Brands extends StatefulWidget {
  const Brands({key}) : super(key: key);

  @override
  _BrandsState createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  var brandList = [
    {'brandName': 'Adidas', 'brandImage': 'images/Logo/adidas.jfif'},
    {'brandName': 'Chanel', 'brandImage': 'images/Logo/chanel.jfif'},
    {'brandName': 'Dior', 'brandImage': 'images/Logo/dior.jfif'},
    {'brandName': 'Max', 'brandImage': 'images/Logo/MAX-LOGO-01-1.png'},
    {'brandName': 'Nike', 'brandImage': 'images/Logo/nike.jfif'},
    {'brandName': 'Puma', 'brandImage': 'images/Logo/puma.jfif'},
    {
      'brandName': 'LC Waikiki',
      'brandImage': 'images/Logo/lc-waikiki-logo.png'
    },
  ];
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 8.0),
        child: Center(
          child: GridView.builder(
            itemCount: brandList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Brand(
                  brandName: brandList[index]['brandName'],
                  brandImage: brandList[index]['brandImage'],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
