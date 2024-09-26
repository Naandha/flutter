import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: flexible(),
  ));
}



class flexible extends StatefulWidget {
  const flexible({super.key});

  @override
  State<flexible> createState() => _flexibleState();
}

class _flexibleState extends State<flexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
   Flexible(flex:2, child: Container(
     color: Colors.greenAccent,
   ),
          ),
          Flexible(flex:2, child: Container(
            color: Colors.green,
          ),
          ),
          Flexible(flex:2, child: Container(
            color: Colors.lightGreen,
          ),
          ),
        ],
      ),
    );
  }
}
