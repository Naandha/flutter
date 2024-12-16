import 'package:flutter/material.dart';
import 'package:flutterproject/mediaquery/responsive.dart';

class RightWidget extends StatelessWidget {
  const RightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Responsive.isWeb(context)? double.infinity:100,
      color: Colors.pink[100],
      child: Text("data"),
    );
  }
}
