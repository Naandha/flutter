import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:separated(),
  ));
}

class separated extends StatelessWidget{

  var name = [
    "John Judah",
    "Bisola Akanbi",
    "Eghosa Iku",
    "Andrew Ndebuisi",
    "Arinze Dayo",
    "Wakara Zimbu",
    "Emaechi Chinedu",
    "Osaretin Igbinomwanhia",
  ];
  var color = [
    Colors.lightBlue,
    Colors.purple,
    Colors.orange,
    Colors.cyan,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.blue,
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("list separated"),
    ),
    body: ListView.separated(
    itemBuilder: (context,index){
      return Card(color: color[index],
          child:ListTile(
      title:Text(name[index]),
      ),
      );

    },

    separatorBuilder: (context,index){
      return Divider(
      thickness: 5,
      color: Colors.white,
      );
    },
    itemCount: name.length),
    );
  }
}

