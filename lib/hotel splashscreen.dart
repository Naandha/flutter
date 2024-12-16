import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hotel loginpage.dart';





void main(){
  runApp(MaterialApp(home: splashscreen(

  )
  ),);
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
      Navigator.push(context, MaterialPageRoute(builder: (context)=> login2()));

    });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.red,
        // height: double.infinity,
        // width: double.infinity,
        child: Center(
          child: Image(image: AssetImage("assets/image/hotel 4.jpg"),
            height: double.infinity,width: double.infinity,
          ),
        ),
      ),
    );
  }
}