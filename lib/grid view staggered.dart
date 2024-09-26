import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main() {
  runApp(MaterialApp(
    home: staggered(),
  ));
}

class staggered extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _staggered();

}
class _staggered extends State<staggered> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:SingleChildScrollView(
     child:StaggeredGrid.count(crossAxisCount: 4,mainAxisSpacing: 10,crossAxisSpacing: 10,
       children:[
         StaggeredGridTile.count(crossAxisCellCount:1,mainAxisCellCount:2,
       child:Container(color: Colors.green,
       child:Text("2")),
    ),
    StaggeredGridTile.count(crossAxisCellCount:4,mainAxisCellCount:2,
    child:Container(color: Colors.greenAccent,
    child:Text("3")),
    ),
    StaggeredGridTile.count(crossAxisCellCount:2,mainAxisCellCount:1,
    child:Container(color: Colors.lightGreen,
    child:Text("4")),
    ),
    StaggeredGridTile.count(crossAxisCellCount:2,mainAxisCellCount:4,
    child:Container(color: Colors.lightGreenAccent,
    child:Text("5")),
    ),
       ]
     ),
     )
   );
  }

}