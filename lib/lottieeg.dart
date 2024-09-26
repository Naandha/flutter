import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: lottieeg(),
  ));
}



class lottieeg extends StatefulWidget {
  const lottieeg ({super.key});

  @override
  State<lottieeg> createState() => _lottieegState();
}

class _lottieegState extends State<lottieeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/animation/dog.json"),
      ),
    );
  }
}
