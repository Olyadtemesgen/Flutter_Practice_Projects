import 'dart:html';

void main(){
  final input = querySelector("input") as InputElement?;
  final button = querySelector("button");

  button!.onClick
  .take(4)
  .where((event) => input?.value == "Jesus")
  .listen(
    (event) { print("You won!");},
    onDone: ()=> print("you lost!"),
    );
}