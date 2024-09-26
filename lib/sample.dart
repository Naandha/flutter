import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(home: Sample(),
  ));
}


class Sample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title:Text("welcome"),
    backgroundColor: Colors.purple
    ,),
    body: Container(decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage("assets/image/bg.jpg"),fit:BoxFit.fill,
      )),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             // Icon(Icons.account_box,size: 50,color: Colors.red,),
              Image(image: AssetImage("assets/image/icon.png"),height: 100,width: 100,),
              Text(
                "instagram",
                    style:TextStyle(fontSize: 30,fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),),
        ]),
          ),
        );


  }

}