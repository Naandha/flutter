import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: home(),
  ));
}
class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(color: Colors.yellowAccent
          [200],
          child: ListTile(
            leading:Image(image: AssetImage("assets/image/profile.png")),
            title: Text("krish"),
            subtitle: Text("8634567890"),
            trailing: Icon(Icons.call),
          ),),
          Card(color: Colors.yellowAccent[100],
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/image/profile.png"),),
                title: Text("vysakh"),
                subtitle: Text("8234567890"),
                trailing: Icon(Icons.call),
              ),
    ),
  ],
    ),);
  }
}









