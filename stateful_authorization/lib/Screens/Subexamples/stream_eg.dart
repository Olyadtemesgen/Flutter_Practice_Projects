import 'dart:async';

class Order{
  String type;
  Order(this.type);
}

class Cake{

}

void main(){
  final controller = new StreamController();

  final order = new Order("type");

  final baker = new StreamTransformer.fromHandlers(
    
    handleData: (cakeType, sink){
      if (cakeType == "chocolate"){
        sink.add(new Cake());
      } else{
        sink.addError("This cannot be done because it is $cakeType");
      }
    }
  );
  controller.sink.add(order);
  controller.stream.map((order) => order.type)
  .transform(baker)
  .listen(
    (cake) => print("the cake is ${cake}"),
    onError: (err) => print(err),
   );
}