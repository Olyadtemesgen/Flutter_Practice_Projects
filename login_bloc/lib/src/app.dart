import 'package:flutter/material.dart';
import 'Login/Login_screen.dart';
import 'blocs/providers.dart';
class App extends StatelessWidget{

  Widget build(context){
    return Provider(

      child:
      MaterialApp(
      title: "Hello to Validation bloc",
      home: Scaffold(
        body: LoginScreen(), 
        ),
      ),
    );
  }
}