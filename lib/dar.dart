import 'package:flutter/material.dart';

class Apps extends StatelessWidget{
  
  Widget build(context){
    return MaterialApp(
      home:Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: print("Jesus!")
          ),
        
        appBar: AppBar(
          title: Text("Hello Olyad"),
        ),
      ),
    );
}
}