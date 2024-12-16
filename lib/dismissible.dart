
import 'package:flutter/material.dart';

class Dissmissible extends StatefulWidget {
  const Dissmissible({super.key});

  @override
  State<Dissmissible> createState() => _DissmissibleState();
      }
      class _DissmissibleState extends State<Dissmissible> {
  var date=["date1","date1","date1","date1"];
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            body :ListView.builder(itemBuilder: (context,index){
              return Dismissible(background: Container(color: Colors.brown,),
                  secondaryBackground: Container(color: Colors.greenAccent,),
                  key:ValueKey(date),
                  child: Center(
                    child: Container(color: Colors.yellowAccent,height: 50,width: double.infinity,
                        child: Text(date[index])),
                  ));
            },itemCount: date.length,
            ),
          );
        }
      }
