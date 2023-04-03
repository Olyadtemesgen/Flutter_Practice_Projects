import 'package:flutter/material.dart';
import 'page.dart';
import 'result_shower.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => BmiCalculator(),
        '/result':(context) => ResultShower()
      },
    );
  }
}