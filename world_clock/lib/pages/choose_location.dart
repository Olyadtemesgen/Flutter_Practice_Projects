import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../services/world_time.dart';
class LocationChooser extends StatefulWidget {
  const LocationChooser({super.key});
    
  @override
  State<LocationChooser> createState() => _LocationChooserState();
}

class _LocationChooserState extends State<LocationChooser> {
  List<WorldClock> locations = [
    WorldClock(location: 'London', url: 'Europe/London', flag: "britsh.jpg"),
    WorldClock(location: 'Khartoum', url: 'Africa/Khartoum', flag: "sudan.jpg"),
    WorldClock(location: 'Denver', url: 'America/Denver', flag: "usa.jpg"),
    WorldClock(location: 'Terhan', url: 'Asia/Tehran', flag: "iran.jpg"), 
    WorldClock(location: 'Tokyo', url: 'Asia/Tokyo', flag: "japan"),
    WorldClock(location: 'Nairobi', url: 'Africa/Nairobi', flag: "kenya.jpg"),
    WorldClock(location: 'Berlin', url: 'Europe/Berlin', flag: "german")
    ];
    
  void setWorldTime(int index) async{
    
    WorldClock instance = locations[index];
    
    await instance.getTime();
    
    Navigator.pop(context, {
      'location':instance.location,
      'url':instance.url,
      'flag':instance.flag,
      'time': instance.time
    }
    );
  }

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose your location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(5),
            child: Card(
              child: ListTile(
                onTap: (){
                  setWorldTime(index);
                  },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/daytime.jpg'),
                ),
              ),
            ),
          );
        })
        )
        ;
  }
}
