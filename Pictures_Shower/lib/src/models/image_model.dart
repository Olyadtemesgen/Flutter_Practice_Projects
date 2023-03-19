import 'package:flutter/material.dart';
import 'dart:convert';

class ImageModel{

  dynamic id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);
  
  ImageModel.fromJson(Map<String, dynamic> parsedJson)
    :id = parsedJson["id"],
     url = parsedJson["url"],
     title = parsedJson["title"];
  
}