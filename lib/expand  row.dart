import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: expanded(),
  ));
}

class expanded extends StatefulWidget {
  const expanded({super.key});

  @override
  State<expanded> createState() => _expandedState();
}

class _expandedState extends State<expanded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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