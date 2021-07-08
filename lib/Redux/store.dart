//@dart=2.9

import 'package:flutter/material.dart';

class StoreApp {
  final String ID;
  final String name;
  final String deliveryTime;
  final List categories;
  const StoreApp({
    @required this.ID,
    @required this.name,
    @required this.deliveryTime,
    @required this.categories,
  });
}
