import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Bottamsheet(),));
}
class Bottamsheet extends StatefulWidget {
  const Bottamsheet({super.key});

  @override
  State<Bottamsheet> createState() => _BottamsheetState();
}

class _BottamsheetState extends State<Bottamsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(child: Text("show"),
          onTap: ()=>show(context),),
      ),
    );
  }

  show(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context){
return ListView(
  children: <Widget>[
    ListTile(
        title:Text("data 1"),
        subtitle:Text("data "),
    ),
    ListTile(
      title:Text("data 2"),
      subtitle:Text("data "),
    ),
    ListTile(
      title:Text("data 3"),
      subtitle:Text("data "),
    ),

  ],
);
    });
  }
}