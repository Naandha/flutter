import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Gridviewextend(),
  ));
}

class Gridviewextend extends StatefulWidget {
  const Gridviewextend({super.key});

  @override
  State<Gridviewextend> createState() => _Gridviewextend();
}

class _Gridviewextend extends State<Gridviewextend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, crossAxisSpacing: 15, mainAxisSpacing: 5),
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Icon(Icons.car_rental),
                Text("Car"),
              ] ,
            ),
            color: Colors.red,
          ),
    Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
    Icon(FontAwesomeIcons.bicycle),
    Text("Bicycle"),
    ] ,
    ),
    color: Colors.blue,
    ),
    Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
    Icon(Icons.directions_boat),
    Text("Boat"),
    ] ,
    ),
    color: Colors.orange,
    ),
    Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
    Icon(Icons.bus_alert),
    Text("Bus"),
    ] ,
    ),
    color: Colors.indigo,
    ),
    Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
    Icon(Icons.train),
    Text("Train"),
    ] ,
    ),
    color: Colors.brown,
    ),
    Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children:[
    Icon(Icons.directions_walk),
    Text("Walk"),
    ] ,
    ),
    color: Colors.greenAccent,
    ),
        ],
      ),
    );
  }
}