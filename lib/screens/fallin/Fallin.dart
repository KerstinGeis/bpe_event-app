import 'package:flutter/material.dart';
import 'package:prototyp_events/screens/News.dart';
import 'package:prototyp_events/screens/Raumplan.dart';
import 'package:prototyp_events/screens/home/home.dart';
import 'package:prototyp_events/screens/services/auth.dart';
import 'FZeitplan.dart';
import '../NavBar.dart';

class Fallin extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Fallin",
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
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        color: Color.fromARGB(255, 182, 24, 41), width: 2),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FZeitplan()));
                  },
                  child: Column(
                      children: <Widget>[
                        Image.asset("assets/images/lucifer.png",
                            width: 300, height: 150),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Zeitplan', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 182, 24, 41))),
                        ),]
                  )
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        color: Color.fromARGB(255, 182, 24, 41), width: 2),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Raumplan()));
                  },
                  child: Column(
                      children: <Widget>[
                        Image.asset("assets/images/lucifer.png",
                            width: 300, height: 150),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Raumplan', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 182, 24, 41))),
                        ),]
                  )
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        color: Color.fromARGB(255, 182, 24, 41), width: 2),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => News()));
                  },
                  child: Column(
                      children: <Widget>[
                        Image.asset("assets/images/lucifer.png",
                            width: 300, height: 150),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('News', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 182, 24, 41))),
                        ),]
                  )
              )
            ],
          ),
        ],
      ),
    );
  }
}
