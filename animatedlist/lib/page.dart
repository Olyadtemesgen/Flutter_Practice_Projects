import 'package:flutter/material.dart';

class CreateWidget extends StatefulWidget {
  const CreateWidget({super.key});

  @override
  State<CreateWidget> createState() => _CreateWidgetState();
}

class _CreateWidgetState extends State<CreateWidget> {
  final _item = [];
  
  GlobalKey<AnimatedListState> _key = GlobalKey();
  void _insertItem(){
    _item.insert(0, "Item ${_item.length + 1}");
    _key.currentState!.insertItem(0,
   
   duration: const Duration(seconds: 1),
   );   
  }

  void _removeItem(int index){
    
    _key.currentState!.removeItem(index,
     (_, animation) =>  SizeTransition(
      sizeFactor: animation,
      child: const Card(
        margin: EdgeInsets.all(10),
        color: Colors.red,
        child: ListTile(
          title: Text(
            "Deleted",
            style: TextStyle(
              fontSize: 24
            ),
          ),
        ), 
      ),
      ),
      duration: const Duration(milliseconds: 300),
    );
    _item.removeAt(0);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10,),
        Container(
          child: IconButton(
            onPressed: _insertItem,
             icon: const Icon(Icons.add)
          ),
        ), 
        Expanded(
          child: AnimatedList(
            key: _key,
            initialItemCount: 0,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index, animation){
            return SizeTransition(
              sizeFactor: animation,
              key: UniqueKey(),
              child: Card(
                margin:  const EdgeInsets.all(10),
                color: Colors.orangeAccent,
                child: ListTile(
                  title: Text(
                    _item[index],
                    style: const TextStyle(fontSize: 24)
                  ),
                  trailing: IconButton(

                     icon: Icon(Icons.delete),
                     onPressed:(){
                       _removeItem(index);
                     }
                ),
              ),
            ),
            );

          },
          
          ),
        ), 
      ],
    );
  }
}