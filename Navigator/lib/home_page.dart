import 'package:flutter/material.dart';
import 'package:flutter_project_1/Profile_Page.dart';
import 'Learning_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override

  Widget build(BuildContext context) {
    return Center(
      child:ElevatedButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context){
              return LearnFlutter();
                }
              ),
            );
          },
        child: const Text("flutter")
      ),
    );
  }
}