import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: expandedeg(),
  ));
}

class expandedeg extends StatefulWidget {
  const expandedeg({super.key});

  @override
  State<expandedeg> createState() => _expandedegState();
}

class _expandedegState extends State<expandedeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 100,
            width: double.infinity,
          ),
          Container(
            color: Colors.red,
            height: 100,
            width: double.infinity,
          ),
          Expanded(
              child: Container(
                color: Colors.green,
                height: 100,
                width: double.infinity,
              )),
        ],
      ),
    );
  }
}