import 'package:flutter/material.dart';
import 'package:prototyp_events/screens/services/auth.dart';
import 'NavBar.dart';
import 'dart:async';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';
import 'home/home.dart';

class News extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<News> {
  final AuthService _auth = AuthService();
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "News",
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
        body: WebView(
          initialUrl: 'https://twitter.com/bpe_de',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      );
    }
  }

