import 'package:flutter/material.dart';

class alert extends StatefulWidget {
  const alert({super.key});

  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
     child:  ElevatedButton(
        onPressed: (){
        showDialog(context: context, builder:(context){
          return AlertDialog(
            title: Text("exit..."),
          content: Text("you want to exit"),
          actions: [
            TextButton(onPressed: ()
          {
            Navigator.of(context).pop();
          },child: Text("yes")),
    TextButton(onPressed: (){Navigator.of(context).pop();},child: Text("no")),
    TextButton(onPressed: (){Navigator.of(context).pop();},child: Text("cancel")),
          ],
          );
        }
        );
    }, child:Text("alert box") ),
      ),
      );
  }
}
