import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: expandtile(),
  ));
}



class expandtile extends StatefulWidget {
  const expandtile({super.key});

  @override
  State<expandtile> createState() => _expandtileState();
}

class _expandtileState extends State<expandtile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(
            backgroundColor: Colors.cyan,
            title: Text("light colo0r"),
            children: [
              ListTile(leading: CircleAvatar(backgroundColor: Colors.orangeAccent[200],),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.greenAccent[100],),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.blueAccent[100],),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.redAccent[100],),),

            ],

          ),
          ExpansionTile(title: Text("dark"),
            backgroundColor: Colors.pink,
            children: [
              ListTile(leading: CircleAvatar(backgroundColor: Colors.yellow,),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.green,),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.brown,),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.red),),
            ],




          )

        ],
      ),
    );
  }
}