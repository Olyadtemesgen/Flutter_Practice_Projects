import 'package:flutter/material.dart';
import 'Profile_Page.dart';
import 'home_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: RootClass(),
    );
  }
}
class RootClass extends StatefulWidget {
  const RootClass({super.key});

  @override
  State<RootClass> createState() => _RootClassState();
}

class _RootClassState extends State<RootClass> {
  var counter = 0;
  var page_num = 0;
  List<Widget> pages = [
  HomePage(),
  ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter"),
      ),
      body: pages[counter],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (counter < 1){
              counter++;
            };
          });
        },
        child: Icon(Icons.headphones)
        ,),
      bottomNavigationBar: NavigationBar(
        destinations: 
        [NavigationDestination(icon: const Icon(Icons.home), label: "home"),
        NavigationDestination(icon: const Icon(Icons.person), label: "profile")
        ],
        onDestinationSelected: (int index) {
          setState(() {
            counter = index;
          });
        },
        selectedIndex: counter,
      ),
    );
  }
}