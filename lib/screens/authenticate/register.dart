import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prototyp_events/screens/authenticate/sign_in.dart';
import 'package:prototyp_events/screens/home/home.dart';
import 'package:prototyp_events/screens/services/auth.dart';

import '../NavBar.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //text field state
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
          "Registrieren",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () async {
                await _auth.signOut();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Home()));
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
                decoration: InputDecoration(hintText: 'Passwort'),
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val.trim());
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Registrieren'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 182, 24, 41)),
                    textStyle: MaterialStateProperty.all(
                        TextStyle(color: Colors.white))),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    dynamic result = await _auth.registerWithEmailAndPassword(
                        email, password);
                    if (result == null) {
                      setState(
                          () => error = "Daten nicht korrekt oder vollständig");
                      print(error);
                    } else {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  }
                },
              ),
              Text(
                error,
                style: TextStyle(color: Color.fromARGB(255, 182, 24, 41)),
              ),
              SizedBox(height: 20.0),
              Text('Bereits registriert?'),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Anmelden'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 182, 24, 41)),
                    textStyle: MaterialStateProperty.all(
                        TextStyle(color: Colors.white))),
                onPressed: () async {
                  Navigator.of(context).pushReplacement(
                      (MaterialPageRoute(builder: (context) => SignIn())));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
