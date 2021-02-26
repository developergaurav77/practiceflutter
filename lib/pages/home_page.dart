import 'package:flutter/material.dart';
import 'package:flutter_app_basic1/models/product.dart';
import 'package:flutter_app_basic1/widgets/drawer_widget.dart';
import 'package:flutter_app_basic1/widgets/product_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String char = "gaurav";
  String appbarname = "E-commerce App";
  final List<ProductModel> products = [
    ProductModel(
        id: 100,
        name: "Mouse",
        price: 400,
        desc: "the displayed mouse is the most salled mouse from our app",
        colors: "#560725",
        imgurl:
            "https://upload.wikimedia.org/wikipedia/commons/2/22/3-Tasten-Maus_Microsoft.jpg"),
    ProductModel(
        id: 200,
        name: "Earphone",
        price: 500,
        desc: "Best Earphone till now",
        colors: "#560730",
        imgurl:
            "https://images-na.ssl-images-amazon.com/images/I/61CkEyP9n3L._SL1500_.jpg"),
    ProductModel(
        id: 300,
        name: "MobilePhone",
        price: 15000,
        desc: "the displayed phone is the most salled phone from our app",
        colors: "#560725",
        imgurl:
            "https://images-na.ssl-images-amazon.com/images/I/61L1ItFgFHL._SL1500_.jpg"),
    ProductModel(
        id: 400,
        name: "Dell XPS Laptop",
        price: 15000,
        desc: "the displayed phone is the most salled phone from our app",
        colors: "#560725",
        imgurl:
            "https://images-na.ssl-images-amazon.com/images/I/61ext2tSJAL._AC_SL1199_.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$appbarname"),
      ),
      body: Center(
        child: Container(
          height: 900,
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 4.0,
                child: Column(
                  children: [
                    Image.network(
                      "${products[index].imgurl}",
                      fit: BoxFit.contain,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("${products[index].name}"),
                        Text("${products[index].price}"),
                        RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/detail');
                          },
                          child: Text("Details"),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
/*RaisedButton(
color: Colors.indigoAccent,
onPressed: () {
Navigator.pop(context);
},
),*/
