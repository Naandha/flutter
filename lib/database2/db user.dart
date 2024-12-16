import 'package:flutter/material.dart';

import 'db loginpage.dart';


class HomeUser extends StatelessWidget {
  final String name;

  const HomeUser({super.key, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Text(
          "Welcome, $name ",
          style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}