import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:prototyp_events/models/myUser.dart';
import 'package:prototyp_events/screens/home/home.dart';
import 'package:prototyp_events/screens/services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        title: 'Event Organisation',
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
