import 'package:flutter/material.dart';
import 'package:flutterproject/datapass/screen2.dart';
import 'package:flutterproject/gridview%20%20count.dart';

import 'list  view separated 1.dart';

void main() {
  runApp(MaterialApp
    (home: Namedrouts(),
    routes: {
      "grid": (context) => gridview(),
      "list": (context) => Separated(),
    },));
}

class Namedrouts extends StatelessWidget {
  const Namedrouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children:[
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, "grid",);

    },child: Text("screen1")),
      SizedBox(height: 20,),
        ElevatedButton(onPressed: () {
    Navigator.pushNamed(context, "list");
    },child: Text("screen2")),

        ],
      ),
      ),
    );
  }
}


