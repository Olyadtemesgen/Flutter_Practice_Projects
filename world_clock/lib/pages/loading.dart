import 'package:flutter/material.dart';
import 'dart:convert';
import '../services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import '../main.dart';
import 'package:http/http.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  get http => null;
  String time = "Loading...";
  
  void setWorldTime() async{
    WorldClock instance = WorldClock(location: 'London', url: 'Europe/London', flag: "this one");
    await instance.getTime();
    Navigator.pushReplacementNamed((context),'/home', arguments: {
      'location':instance.location,
      'url':instance.url,
      'flag':instance.flag,
      'time': instance.time
    });
    setState(() {
      time = instance.time;
    });
  }
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SpinKitWave(
      color: Colors.green,
      size: 20.0,
    ),
    );
  }
}