import 'package:flutter/material.dart';
import 'package:flutterproject/datapass/dammyproduts1.dart';

class screens2 extends StatefulWidget {
  const screens2({super.key});

  @override
  State<screens2> createState() => _screens2State();
}

class _screens2State extends State<screens2> {

  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final data=dummyproducts1.firstWhere((product) => product["id"]==id);
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
