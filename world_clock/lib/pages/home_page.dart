import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    
    data = data.isNotEmpty ? data:ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;
    
    print(data);
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home:Scaffold(
        
        body: Center(
          child: SafeArea(
            child:Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/daytime.jpg'),
            fit: BoxFit.cover),),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: Column(
                
                children: [
                  Container(
                    width: double.infinity,
                    height: 35,
                    child:MaterialButton(
                    onPressed: () async{
                      dynamic result = await Navigator.pushNamed(context, '/location');
                      print(result);
                      setState(() {
                        data = {
                          'time':result['time'],
                          'location':result['location'],
                          'url':result['url'],
                          'flag':result['flag']
                        };
                      }
                      );
                    },

                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                        
                        Icon(Icons.location_pin),
                        Text("Choose Location"),
                      ],
                  ),
                  ),
                  ),
                  SizedBox(height: 20,),
                  Text(data['location'],  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                  SizedBox(height: 20,),
                  Text(data['time'], style: TextStyle(
                     fontSize: 40,
                  ),
                )
              ]
              ),
            ),
          ),
        ),
      ),
      ),
    );
  }
}