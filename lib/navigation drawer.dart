import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home:navi (),
  ));
}

class navi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
    drawer: Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(accountName: Text("nandaa"), accountEmail:Text("nanda@gamil.com"),
          currentAccountPicture:CircleAvatar(backgroundImage: AssetImage("assets/image/profile.png"),
          ),
        otherAccountsPictures:[
              CircleAvatar(backgroundImage: AssetImage("assets/image/london.jpg"),),
                  CircleAvatar(backgroundImage: AssetImage("assets/image/newyrk.jpg")),
    ],
    decoration:BoxDecoration(image: DecorationImage(
    image: AssetImage("assets/image/finland.jpg"),

fit: BoxFit.fill)),

      ),
        ListTile(
          leading: Icon(Icons.send),
          title: Text("Send"),
        ),
        ListTile(
          leading: Icon(Icons.update),
          title: Text("update"),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("home"),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Logout"),
        ),
        ],
    ),
    ),
    );
  }

}