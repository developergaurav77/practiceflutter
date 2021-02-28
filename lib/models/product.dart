import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String name;
  final int price;
  final String desc;
  final String colors;
  final String image;

  ProductModel(
      {@required this.id,
      @required this.name,
      @required this.price,
      @required this.desc,
      @required this.image,
      @required this.colors});
  factory ProductModel.fromMap(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'] as int,
        name: json['name'] as String,
        price: json['price'] as int,
        desc: json['desc'] as String,
        colors: json['colors'] as String,
        image: json['image'] as String);
  }
}
