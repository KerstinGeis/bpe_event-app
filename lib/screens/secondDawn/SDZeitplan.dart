import 'package:flutter/material.dart';
import 'package:prototyp_events/screens/home/home.dart';
import 'package:prototyp_events/screens/secondDawn/SDSamstag.dart';
import 'package:prototyp_events/screens/secondDawn/SDSonntag.dart';
import 'package:prototyp_events/screens/services/auth.dart';
import '../NavBar.dart';
import 'SDFreitag.dart';

class SDZeitplan extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Zeitplan",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Buttons("Freitag", context, SDFreitag()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Buttons("Samstag", context, SDSamstag()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Buttons("Sonntag", context, SDSonntag()),
            ],
          ),
        ],
      ),
    );
  }

  Widget Buttons(String text, BuildContext context, Widget screen) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => screen));
      },
      style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 182, 24, 41),
        minimumSize: Size(300, 130),
      ),
      child: Container(
        child: Text(
          text,
        ),
      ),
    );
  }
}