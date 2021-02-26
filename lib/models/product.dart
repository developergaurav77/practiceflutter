import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String name;
  final num price;
  final String desc;
  final String colors;
  final String imgurl;

  ProductModel(
      {@required this.id,
      @required this.name,
      @required this.price,
      @required this.desc,
      @required this.imgurl,
      @required this.colors});
}
