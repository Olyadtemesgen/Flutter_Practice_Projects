/*This small project is a game like easiest project 
and it makes whenever we click the button after 
morethan one second interval it will be game over! */
import 'dart:html';
void main(){
  //Lets assume there is an HTML file haing a button
  final button = querySelector("button");
  button!.onClick
  .timeout(
    new Duration(seconds: 1),
    onTimeout: (sink) => sink.addError("Game Over Nigga!")
  )
  .listen(
    (event) { },
    onError: (err) => print(err)
  );
}