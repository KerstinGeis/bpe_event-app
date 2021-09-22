import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prototyp_events/screens/home/home.dart';
import 'package:prototyp_events/screens/services/auth.dart';
import 'NavBar.dart';

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  final AuthService _auth = AuthService();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profil",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: CircleAvatar(
              radius: 120,
              backgroundImage: AssetImage("assets/images/profil.jpg"),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Name: Max",
            style: TextStyle(
                color: Color.fromARGB(255, 182, 24, 41), fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Nachname: Mustermann",
            style: TextStyle(
                color: Color.fromARGB(255, 182, 24, 41), fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.local_post_office_outlined,
                      color: Colors.grey[400],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("max.mustermannm@bpe.de",
                        style: TextStyle(
                            color: Color.fromARGB(255, 182, 24, 41),
                            fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
