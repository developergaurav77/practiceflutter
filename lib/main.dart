import 'package:flutter/material.dart';
import 'package:flutter_app_basic1/pages/home_page.dart';
import 'package:flutter_app_basic1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(color: Colors.indigo, elevation: 0.0),
      ),
      themeMode: ThemeMode.light,
      initialRoute: "/home",
      //home: HomePage(),
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
