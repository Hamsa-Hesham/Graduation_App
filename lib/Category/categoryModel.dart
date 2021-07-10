import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;
  Category({
    required this.imageLocation,
    required this.imageCaption,
  });
  factory Category.fromJson(Map<String, dynamic> json) => Category(
        imageLocation: json['imageLocation'],
        imageCaption: json['imageCaption'],
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
                imageCaption,
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
