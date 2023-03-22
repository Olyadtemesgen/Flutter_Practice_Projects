import "dart:async";
import "dart:math";
import 'package:flutter/material.dart';
class Validators{
  final emailvalid = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data.contains("@")){
        sink.add(data);
      }
      else{
        sink.addError("Invalid email");
      }
    },
  );
  final passwordvalid = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) {
      if (data != null && data.length > 8){
        sink.add(data);
      }else{
        sink.addError("invalid password");
      }
    },
  );
}