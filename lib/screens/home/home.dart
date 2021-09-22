import 'package:flutter/material.dart';
import 'package:prototyp_events/screens/Profil.dart';
import 'package:prototyp_events/screens/fallin/Fallin.dart';
import 'package:prototyp_events/screens/peacemaker/Peacemaker.dart';
import 'package:prototyp_events/screens/secondDawn/SecondDawn.dart';
import 'package:prototyp_events/screens/services/auth.dart';
import '../NavBar.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Bonfire Phoenix Events",
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                            color: Color.fromARGB(255, 182, 24, 41), width: 2),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Peacemaker()));
                      },
                      child: Column(children: <Widget>[
                        Image.asset("assets/images/peacemaker.png",
                            width: 300, height: 200),
                      ]))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Color.fromARGB(255, 182, 24, 41), width: 2),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Fallin()));
                    },
                    child: Image.asset("assets/images/lucifer.png",
                        width: 300, height: 200),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Color.fromARGB(255, 182, 24, 41), width: 2),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SecondDawn()));
                    },
                    child: Image.asset("assets/images/secondDawn.png",
                        width: 300, height: 200),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
