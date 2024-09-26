import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyStack(),));
}

class MyStack extends StatefulWidget {
  const MyStack({super.key});

  @override
  State<MyStack> createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ),
          Positioned(
            top: 150,
            left: 150,
            child: Container(
              color: Colors.green,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}