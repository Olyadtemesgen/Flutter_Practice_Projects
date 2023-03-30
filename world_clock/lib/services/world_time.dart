import 'dart:convert';
import 'package:flutter/material.dart';
import "package:http/http.dart";
import 'package:intl/intl.dart';

class WorldClock{
  
  String location;
    String time = "unkown yet";
  String url;
  String flag;

  WorldClock({required this.location, required this.url, required this.flag});
  Future<void> getTime() async{
    try{
      
      Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map resp = jsonDecode(response.body);
      String offset = resp['utc_offset'].substring(1, 3);
      DateTime now = DateTime.parse(resp['datetime']);
      now = now.add(Duration(hours: int.parse( offset)));
      time = DateFormat.jm().format(now);
    
    }
    
    catch(e){
     
      time = 'We can not get the time!';
    
    }
  }
}
final instance = WorldClock(location: "oli", url: "tola", flag: "as");
