import 'dart:async';

import 'package:login_bloc/src/blocs/Validators.dart';

class Bloc extends Validators{
  final _emailcontroller = StreamController<String>();
  final _passwordcontroller = StreamController<String>();
  
  Stream<String> get email =>  _emailcontroller.stream.transform(emailvalid);
  Stream<String> get password => _passwordcontroller.stream.transform(passwordvalid);

  Function(String) get changeEmail => _emailcontroller.sink.add;
  Function(String) get changepassword => _passwordcontroller.sink.add;
  
  dispose(){
    _emailcontroller.close();
    _passwordcontroller.close();
  }
}