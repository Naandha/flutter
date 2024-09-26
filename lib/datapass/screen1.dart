import 'package:flutter/material.dart';
import 'package:flutterproject/datapass/screen2.dart';

import 'dammyproduct.dart';

void main(){
  runApp(MaterialApp(home: screen1(),
  routes: {
    "screen2":(context)=>screen2(),
  },));
}


class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: dummyproduct.map((product) =>
            GestureDetector(
              child: Column(
                children: [
                  Text(product["name"]),
                  Image(image: AssetImage(product["image"]))
                ],
              ),
              onTap: () => getproduct(context, product["id"]),
            )).toList(),
      ),
    );
  }

  void getproduct(BuildContext context, product) {
    Navigator.pushNamed(context, "screen2", arguments: product);
  }
}