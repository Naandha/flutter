import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Gridbuilder (),
  ));
}

class Gridbuilder extends StatefulWidget {
  const Gridbuilder({super.key});

  @override
  State<Gridbuilder> createState() => _Gridbuilder();
}

class _Gridbuilder extends State<Gridbuilder> {

  var color=[Colors.cyan,
    Colors.blue,
    Colors.pink,
    Colors.orange,
    Colors.indigo,
  Colors.lightBlueAccent];
  var image=[Icons.account_box,
  Icons.access_time,
  Icons.add_alert,
  Icons.access_alarm,
  Icons.account_balance,
  Icons.track_changes];
  var data=["account_box",
      "access_time",
  "add_alert",
    "access_alarm",
    "account_balance",
  "track_changes"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2), itemBuilder: ( context, int index) {
          return Container(color: color[index],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(image[index]),
                  Text(data[index]),
                ],

              ),

          );

      },itemCount: color.length,

      ),
    );
  }
}