import 'package:flutter/cupertino.dart';

class ProductModel {
  final String id;
  final String name;
  final num price;
  final String desc;
  final String imgurl;

  ProductModel({this.id, this.name, this.price, this.desc, this.imgurl});
}

final Products = [
  ProductModel(
      id: "100",
      name: "mouse",
      price: 400,
      desc: "the displayed mouse is the most salled mouse from our app",
      imgurl:
          "https://upload.wikimedia.org/wikipedia/commons/2/22/3-Tasten-Maus_Microsoft.jpg"),
];
