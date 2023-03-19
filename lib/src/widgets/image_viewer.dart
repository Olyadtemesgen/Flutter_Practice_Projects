import 'dart:math';

import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageViewer extends StatelessWidget{
  final List<ImageModel> display;
  ImageViewer(this.display);
  
  Widget build(context){
    return ListView.builder(
      itemCount: display.length,
      itemBuilder: (context, int index){
        return buildImage(display[index]);
      },
    );
  }
  Widget buildImage(ImageModel display){
    return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red)
          ),
          margin: EdgeInsets.all(20.0),
          
          child:  Column(
            children: <Widget> [
              Padding(
                child:Image.network(display.url),
                padding: EdgeInsets.only(bottom: 20.0),
                ),
              Padding(
                child: Text(display.title),
                padding: EdgeInsets.only(bottom: 10.0),
                ),
             ],
          ),
        );
  } 
}