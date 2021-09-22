import 'package:flutter/material.dart';
import 'package:prototyp_events/screens/fallin/Fallin.dart';
import 'package:prototyp_events/screens/home/home.dart';
import 'package:prototyp_events/screens/peacemaker/Peacemaker.dart';
import 'package:prototyp_events/screens/Profil.dart';
import 'package:prototyp_events/screens/secondDawn/SecondDawn.dart';
import 'package:prototyp_events/screens/wrapper.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      child: ListView(
        children: [
          Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/banner.gif",
                height: 150,
                width: MediaQuery.of(context).size.width,
              )),
          ListTile(
              title: Text('Home', style: TextStyle(color: Color.fromARGB(255, 182, 24, 41), fontSize: 16)),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Home()));
              }),
          ListTile(
              title: Text('Peacemaker', style: TextStyle(color: Color.fromARGB(255, 182, 24, 41), fontSize: 16)),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Peacemaker()));
              }),
          ListTile(
              title: Text('Fallin', style: TextStyle(color: Color.fromARGB(255, 182, 24, 41), fontSize: 16)),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Fallin()));
              }),
          ListTile(
              title: Text('Second Dawn',style: TextStyle(color: Color.fromARGB(255, 182, 24, 41), fontSize: 16)),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SecondDawn()));
              }),
          ListTile(
              title: Text('Profil',style: TextStyle(color: Color.fromARGB(255, 182, 24, 41), fontSize: 16)),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Wrapper()));
              }),
        ],
      ),
    ));
  }
}
