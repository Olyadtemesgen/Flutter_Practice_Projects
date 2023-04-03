import 'dart:ffi';

import 'package:flutter/material.dart';

class ResultShower extends StatelessWidget {
  ResultShower({super.key});
  String value = "";
 Map data = {};

  @override
  Widget build(BuildContext context){
    
    data = data.isNotEmpty ? data:ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;
    double bmi = double.parse(((data['wieght'] * 10000) / (data['height'] * data['height'])).toStringAsFixed(2));
    if (bmi > 30)value = "You are obese"; 
    else value = "You are slimmy";
    return Scaffold(
      
      appBar: AppBar(
        title: Text("BMI Result"),
        centerTitle: true,
      ),
      
      body:Container(
          width:double.infinity,
          height: double.infinity,
          
          color: Color.fromARGB(255, 111, 0, 190),
          child: Container(
            // color: Colors.red,
            // color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("YOUR IBM WILL BE", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),

                Text("$bmi",
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),),
                Text("${value.toString()}"),
              ],
            ),
          ),
        ),
    );
  }
}