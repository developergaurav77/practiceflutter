import 'package:flutter_app_basic1/models/product.dart';

class Catalogmodel {
  static List<ProductModel> products = [
    ProductModel(
        id: 100,
        name: "Mouse",
        price: 400,
        desc: "the displayed mouse is the most salled mouse from our app",
        colors: "#560725",
        image:
            "https://upload.wikimedia.org/wikipedia/commons/2/22/3-Tasten-Maus_Microsoft.jpg"),
    ProductModel(
        id: 200,
        name: "Earphone",
        price: 500,
        desc: "Best Earphone till now",
        colors: "#560730",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61CkEyP9n3L._SL1500_.jpg"),
    ProductModel(
        id: 300,
        name: "MobilePhone",
        price: 15000,
        desc: "the displayed phone is the most salled phone from our app",
        colors: "#560725",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61L1ItFgFHL._SL1500_.jpg"),
    ProductModel(
        id: 400,
        name: "Dell XPS Laptop",
        price: 15000,
        desc: "the displayed phone is the most salled phone from our app",
        colors: "#560725",
        image:
            "https://images-na.ssl-images-amazon.com/images/I/61ext2tSJAL._AC_SL1199_.jpg"),
  ];
}
