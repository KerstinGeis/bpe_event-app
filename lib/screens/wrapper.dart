import 'package:flutter/material.dart';
import 'package:prototyp_events/models/myUser.dart';
import 'package:prototyp_events/screens/Profil.dart';
import 'package:prototyp_events/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';
import 'home/home.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyUser?>(context);
    print(user);

    if(user == null) {
      return Authenticate();
    } else {
      return Profil();
    }
  }
}
