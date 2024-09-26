import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cities.dart';
import 'home.dart';
import 'list view builder.dart';


void main(){
  runApp(MaterialApp(home:tab (),
  ));
}


class tab extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _tab();

}
class _tab extends State<tab> {
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(length: 4,
       child: Scaffold(
     appBar:  AppBar(backgroundColor: Colors.cyan,
       title: Text("whatsapp"),
       actions: [
         Icon(Icons.search),
         PopupMenuButton(itemBuilder: (context){
           return[
             PopupMenuItem(child: Text("Invite")),
             PopupMenuItem(child: Text("Refresh")),
             PopupMenuItem(child: Text("Logout")),
           ];
         }),
       ],
       bottom: TabBar(

         isScrollable: true,
         labelColor: Colors.blue,
         dividerColor: Colors.lightGreenAccent,
         indicatorColor: Colors.green,
         unselectedLabelColor: Colors.green,

         tabs: [
         Tab(child:Icon(Icons.camera_alt),),
     Tab(child:Text("CHAT"),),
     Tab(child:Text("STATUS"),),
     Tab(child:Text("CALL"),),

       ],),
     ),
         body: TabBarView(children: [
           Center(child: Icon(Icons.camera_alt),),
           Listviewbuilder(),
           Cities(),
           home(),

         ],),
    floatingActionButton: FloatingActionButton(onPressed: (){},
    child: Icon(Icons.message),
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
     ),
   ),
   );
  }

}
