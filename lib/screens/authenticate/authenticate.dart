import 'package:flutter/material.dart';
import 'package:prototyp_events/screens/authenticate/register.dart';
import 'package:prototyp_events/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;


  @override
  Widget build(BuildContext context) {
  if (showSignIn) {
    return SignIn();
  } else {
    return Register();
  }
  }
}