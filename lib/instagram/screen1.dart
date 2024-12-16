import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/instagram/screen2.dart';



void main(){
runApp(MaterialApp(home: splashscreen()),);
}

class splashscreen extends StatefulWidget {
const splashscreen({super.key});

@override
State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
@override
void initState(){
  Timer(Duration(seconds: 5), (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
  });
}
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      color: Colors.black,
      child: Center(
        child: Image(
          image: AssetImage("assets/image/instagram.png"),
          height: 100,
          width:100,
      ),
    ),
   ),
  );
 }
}