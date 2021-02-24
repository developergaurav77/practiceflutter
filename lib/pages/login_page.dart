import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/login.png',
            fit: BoxFit.fitWidth,
            height: 300,
          ),
          Center(
            child: Text(
              "WELCOME",
              style: GoogleFonts.lato(
                color: Colors.indigoAccent,
                fontWeight: FontWeight.bold,
                fontSize: 26,
                letterSpacing: 8.2,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "UserName",
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: 40.0,
            width: 120.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 19.0),
              ),
              color: Colors.indigoAccent,
            ),
          )
        ],
      ),
    ));
  }
}
