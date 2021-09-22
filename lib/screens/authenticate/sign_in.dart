import 'package:flutter/material.dart';
import 'package:prototyp_events/screens/Profil.dart';
import 'package:prototyp_events/screens/authenticate/register.dart';
import 'package:prototyp_events/screens/home/home.dart';
import 'package:prototyp_events/screens/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../NavBar.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Anmelden",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () async {
                await _auth.signOut();
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              },
              icon: Icon(Icons.logout_rounded))
        ],
        backgroundColor: Color.fromARGB(255, 182, 24, 41),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                validator: (val) => val!.isEmpty ? 'E-Mail eingeben' : null,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'E-Mail'),
                onChanged: (val) {
                  setState(() => email = val.trim());
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                validator: (val) =>
                    val!.length < 6 ? ' Min. 6 Zeichen eingeben' : null,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Passwort'),
                onChanged: (val) {
                  setState(() => password = val.trim());
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Anmelden'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 182, 24, 41)),
                    textStyle: MaterialStateProperty.all(
                        TextStyle(color: Colors.white))),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    dynamic result =
                        await _auth.signInWithEmailAndPassword(email, password);
                    if (result == null) {
                      setState(() => error = "Daten nicht korrekt");
                      print(error);
                    } else {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Profil()));
                    }
                  }
                },
              ),
              Text(
                error,
                style: TextStyle(color: Color.fromARGB(255, 182, 24, 41)),
              ),
              SizedBox(height: 20.0),
              Text('Noch nicht registriert?'),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Registrieren'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 182, 24, 41)),
                    textStyle: MaterialStateProperty.all(
                        TextStyle(color: Colors.white))),
                onPressed: () async {
                  Navigator.of(context).pushReplacement(
                      (MaterialPageRoute(builder: (context) => Register())));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
