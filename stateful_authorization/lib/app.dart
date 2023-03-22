
import 'package:flutter/material.dart';
import 'Screens/Login.dart';

class App extends StatelessWidget{
 
  Widget build(context){
    return MaterialApp(
      title: "Hello olyad to the second project",
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}