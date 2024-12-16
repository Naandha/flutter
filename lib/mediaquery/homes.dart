import 'package:flutter/material.dart';
import 'package:flutterproject/mediaquery/responsive.dart';
import 'package:flutterproject/mediaquery/rightwidget.dart';

import 'center.dart';
import 'leftwidget.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:Responsive.isWeb(context)? AppBar() :null,
      drawer: leftWidget(),
      body: Row(
        children: [
          if(Responsive.isWeb(context))
            Expanded(child: leftWidget(),flex:2,),
          Expanded(child: CenterWidget(),flex: 5,),
          if(Responsive.isWeb(context))
            Expanded(child: RightWidget(),flex: 3,),
        ],
      ),
    );
  }
}

