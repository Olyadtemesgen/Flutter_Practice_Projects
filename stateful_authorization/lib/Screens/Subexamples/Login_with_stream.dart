import 'dart:html';
import 'dart:async';
import 'package:flutter/material.dart';
void main() {
  final input = querySelector("input") as InputElement?;
  final div = querySelector("div");

  // ignore: unnecessary_new
  final isValid = new StreamTransformer.fromHandlers(
    handleData: (inputData, sink) {
      if (inputData?.contains("@")){
        sink.add(inputData);
      }
      else{
        return sink.addError("error");
      }
    }
  )
  input.onInput
  .listen((event) {print(event.target!.value);})
  .transform
}