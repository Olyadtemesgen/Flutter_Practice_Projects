import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  bool isSwitch = true;
  bool? isChechBox = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color:Color.fromARGB(255, 6, 74, 192), child:
        Text("data"),),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, 
          icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/monalisa.jpg'),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              width: double.infinity,
              height: 30,
              margin: EdgeInsets.all(10),
              color: Colors.pink,
              child: const Center(
                child: 
                Text("I don't know her name btw", 
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
      
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.save,
                  color: Colors.green,
                  ),
                TextButton(
                  onPressed: (){}, 
                  child: Text("others")),
                Icon(Icons.delete)
      
              ],
            ),
            Switch(value: isSwitch, onChanged: (bool newBool){
              setState(() {
                isSwitch = newBool;
              });
            }),
            Checkbox(value: isChechBox, onChanged: (bool? isChecked){
              setState(() {
                isChechBox = isChecked;
              });
            })      
          ]),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint("hello");
        },
        child: Icon(Icons.add),),
    );
  }
}