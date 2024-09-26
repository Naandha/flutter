import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Listviewbuilder(),
  ));
}

class Listviewbuilder extends StatelessWidget{
  var name=["nandana","ridhu","vinod","shali","malavika"];
  var phone=["9447008690","8921251710","9526951210","9876543219","678964323450"];
  var image=["assets/image/profile.png","assets/image/profile.png","assets/image/profile.png","assets/image/profile.png","assets/image/profile.png"];
  var color=[Colors.yellow,Colors.blue,Colors.red,Colors.purple,Colors.indigo];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.red[100],
      body: ListView.builder(itemBuilder: (context,index)
    {
      return Card(
          color: color[index],
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
            title: Text(name
            [index]),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.call),

          ));
    },itemCount: name.length,
        ),
    );

  }
  
}