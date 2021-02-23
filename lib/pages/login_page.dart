import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/login.png',
          fit: BoxFit.fitWidth,
        ),
        Center(
          child: Text(
            "Login page",
            style: GoogleFonts.peralta(
              color: Colors.indigoAccent,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              letterSpacing: 8.2,
            ),
          ),
        ),
      ],
    ));
  }
}
