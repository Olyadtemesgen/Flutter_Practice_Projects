import 'dart:async';
void main(){
  final block = new Bloc();

  block.changeEmail("tolasagudina");
}
class Bloc{
  final _emailcontroller = StreamController<String>();
  final _passwordcontroller = StreamController<String>();

  Function(String) get changeEmail => _emailcontroller.sink.add;
  Function(String) get changepassword => _passwordcontroller.sink.add;
  
  Stream<String> get email =>  _emailcontroller.stream;
  Stream<String> get password => _passwordcontroller.stream;
}