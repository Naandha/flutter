import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/home.dart';

import 'custom check.dart';

void main(){
  runApp(MaterialApp(home: Custmewidgetceg (),));
}

class Custmewidgetceg extends StatelessWidget {
  const Custmewidgetceg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Customegg(img: Image(image: AssetImage("assets/image/doll.jpg")), title: Text("data"), onprss: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
          })
      ),
    );
  }
}