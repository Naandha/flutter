import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class mainscreen extends StatefulWidget {
  const mainscreen({super.key});
  @override
  State<mainscreen> createState() => _mainscreenState();
}
class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.pink,
      body: Center(
        child: Text("welcome"),
      ),
    );
  }
}