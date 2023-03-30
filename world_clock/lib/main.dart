import 'package:flutter/material.dart';
import 'package:world_clock/pages/home_page.dart';
import 'pages/choose_location.dart';
import 'pages/loading.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home
({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Home(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingPage(),
        '/home':(context) => HomePage(),
        '/location':(context) => LocationChooser()
      },
    );
  }
}