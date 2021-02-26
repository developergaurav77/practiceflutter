import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool buttontap = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        buttontap = true;
      });
      await Future.delayed(Duration(seconds: 3));
      await Navigator.pushNamed(context, '/home');
      setState(() {
        buttontap = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: _formKey,
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
                "WELCOME $name",
                style: GoogleFonts.lato(
                  color: Colors.indigoAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  letterSpacing: 2.2,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 16.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "UserName",
                ),
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Username can\'t be empty';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 16.0),
              child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Password can\'t be empty';
                    } else if (value.length <= 5) {
                      return 'Password must be grater than 5 char';
                    } else {
                      return null;
                    }
                  }),
            ),
            SizedBox(
              height: 40.0,
            ),
            InkWell(
              onTap: () => moveToHome(context),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 50),
                height: buttontap ? 50.0 : 40.0,
                width: buttontap ? 53.0 : 120,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: buttontap
                      ? BorderRadius.circular(140.0)
                      : BorderRadius.circular(10.0),
                ),
                child: buttontap
                    ? Center(
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                        ),
                      )
                    : Center(
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 19.0),
                        ),
                      ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
