import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main screen.dart';

void main(){
  runApp(MaterialApp(home:splshdesign(),
  ));
}
class splshdesign extends StatefulWidget {
  const splshdesign({super.key});
  @override
  State<splshdesign> createState() => _splshdesignState();
}
class _splshdesignState extends State<splshdesign> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>mainscreen()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/image/icon.png"),
              height: 100,
              width: 100,),
          ],
        ),
      ),
    );
  }
}
