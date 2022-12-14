import 'package:flutter/material.dart';
import 'package:flutter_healthcare_app/src/routes/signUp.dart';
import 'package:flutter_healthcare_app/src/routes/signIn.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignInPage(toggleView);
    } else {
      return SignUpPage(toggleView);
    }
  }
}
