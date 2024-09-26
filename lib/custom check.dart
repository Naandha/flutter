import 'package:flutter/material.dart';

class Customegg extends StatelessWidget {
  final Image img;
  final Text title;
  final Text? subtitle;
  VoidCallback onprss;
  Customegg({required this.img, required this.title, this.subtitle, required this.onprss});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          children: [
            ListTile(
              leading:img ,
              title: title ,
              subtitle: subtitle,
              trailing: img ,
              onTap: onprss,
            ),
            Container(child: img,)
          ],
        ),
      ),
    );
  }
}