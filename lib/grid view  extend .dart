import 'package:flutter/material.dart';

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
            child: Center(
              child: Text("1"),
            ),
            color: Colors.red,
          ),
          Container(
            child: Center(
              child: Text("2"),
            ),
            color: Colors.yellow,
          ),
          Container(
            child: Center(
              child: Text("3"),
            ),
            color: Colors.purple,
          ),
          Container(
            child: Center(
              child: Text("4"),
            ),
            color: Colors.brown,
          ),
          Container(
            child: Center(
              child: Text("5"),
            ),
            color: Colors.pink,
          ),
          Container(
            child: Center(
              child: Text("6"),
            ),
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}