import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_basic1/models/catalogmodel.dart';
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

//loading json data
  loadData() async {
    final productJson =
        await rootBundle.loadString("assets/files/productname.json");
    final decodedData = jsonDecode(productJson);
    var productData = decodedData["products"];
    Catalogmodel.products = List.from(productData)
        .map<ProductModel>((model) => ProductModel.fromMap(model))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("$appbarname"),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            height: 900,
            child: (Catalogmodel.products.length != null &&
                    Catalogmodel.products.isNotEmpty)
                ? ListView.builder(
                    itemCount: Catalogmodel.products.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 0.0),
                        child: Card(
                          color: Colors.white,
                          elevation: 4.0,
                          child: Column(
                            children: [
                              Container(
                                height: 290,
                                width: 280,
                                child: Image.network(
                                  "${Catalogmodel.products[index].image}",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "${Catalogmodel.products[index].name}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      "Rs ${Catalogmodel.products[index].price}"),
                                  RaisedButton(
                                    color: Colors.indigoAccent,
                                    hoverColor: Colors.indigo,
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/detail',
                                      );
                                    },
                                    child: Text(
                                      "Details",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
                : Center(child: CircularProgressIndicator()),
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
