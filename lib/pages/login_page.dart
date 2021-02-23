import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          'assets/images/login.png',
          fit: BoxFit.fitWidth,
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "UserName",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
            ),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          color: Colors.indigoAccent,
        )
      ],
    ));
  }
}
