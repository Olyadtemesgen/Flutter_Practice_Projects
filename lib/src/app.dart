import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import "dart:async";
import 'models/image_model.dart';
import 'dart:core';
import 'widgets/image_viewer.dart';

class App extends StatefulWidget{
  // @override
  createState() {
    return AppState();
  }
}

class AppState extends State<App>{
  int count = 1;
  List<ImageModel> display = [];
  void fetchData() async{
    count++;
    var result =  await get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$count'));
    var res = ImageModel.fromJson(json.decode(result.body));
    
    setState(()
    {display.add(res);}
    );
    print(display);
  }
  Widget build(context){
    
    return MaterialApp(
         home:Scaffold(
          body: ImageViewer(display),
           appBar: AppBar(
           title: Text("Hello Olyad"),
           
        ),
          floatingActionButton: FloatingActionButton(
              onPressed: fetchData,
        
          child: Icon(Icons.add),
        ),
    ),
   );
  }
}