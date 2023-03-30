import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("item${index}"),
          leading: Icon(Icons.baby_changing_station_outlined),
          trailing: Icon(Icons.select_all),
        );
      },
    );
  }
}