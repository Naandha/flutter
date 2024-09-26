import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/loginpage.dart';


void main(){
  runApp(MaterialApp(home:Splashscreen(),
  ));
}
class Splashscreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SplashscreenState();

}
class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink[200],
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