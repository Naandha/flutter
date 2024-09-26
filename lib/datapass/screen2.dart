import 'package:flutter/material.dart';
import 'package:flutterproject/datapass/dammyproduct.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final data=dummyproduct.firstWhere((product) => product["id"]==id);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("${data["name"]}"),
            Image(image: AssetImage("${data["image"]}")),
            Text("${data["rate"]}"),
            Text("${data["description"]}"),
          ],
        ),
      ),
    );
  }
}
