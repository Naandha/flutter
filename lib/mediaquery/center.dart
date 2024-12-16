import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/mediaquery/responsive.dart';
import 'package:flutterproject/mediaquery/rightwidget.dart';

class CenterWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
       children: [
         GridView.builder(
           shrinkWrap: true,
           physics: NeverScrollableScrollPhysics(),
           padding: EdgeInsets.all(20),
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
      itemBuilder:(context,index) {
        return Container(
          height: 100,
          color: Colors.blue,
        );
      },
           itemCount: 15,
      ),
         if(Responsive.isMobile(context)) RightWidget()
       ]
    ),
    );
  }
}
