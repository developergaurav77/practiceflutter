import 'package:flutter/material.dart';
import 'package:flutter_app_basic1/widgets/drawer_widget.dart';

class HomePage extends StatelessWidget {
  String char = "gaurav";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("name:"),
            Text("$char"),
            Text("singh"),
            Text("thagunna"),
            Text("student2"),
            SizedBox(
              height: 180.0,
            ),
            RaisedButton(
              color: Colors.indigoAccent,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Back",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
