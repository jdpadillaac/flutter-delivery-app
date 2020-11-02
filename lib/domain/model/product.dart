import 'package:flutter/cupertino.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final String image;

  const Product({
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.image,
  });
}
