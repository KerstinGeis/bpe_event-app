import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:prototyp_events/screens/services/auth.dart';
import 'NavBar.dart';
import 'home/home.dart';

class Raumplan extends StatefulWidget {

  @override
  _RaumplanState createState() => _RaumplanState();
}

class _RaumplanState extends State<Raumplan> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Raumplan",
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
          child: Container(
            child: PhotoView(
              backgroundDecoration: BoxDecoration(color: Colors.white),
              imageProvider: AssetImage(
                "assets/images/raumplan.jpg",
              ),
            ),
          ),
        ));
  }
}
