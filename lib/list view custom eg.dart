

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:listcustom(),
  ));
}

class listcustom extends StatelessWidget{
  var name=["nandana","ridhu","vinod","shali","malavika"];
  var phone=["9447008690","8921251710","9526951210","9876543219","678964323450"];
  var image=["assets/image/profile.png","assets/image/profile.png","assets/image/profile.png","assets/image/profile.png","assets/image/profile.png"];
  var color=[Colors.yellow,Colors.blue,Colors.red,Colors.purple,Colors.indigo];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context,index){

        return Card(
          color: color[index],
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),
            title:Text(name[index]),
            trailing: Wrap(
              children: [
                Icon(Icons.edit),
                SizedBox(
                  width: 5,),
            Icon(Icons.delete)

              ],
            )
            ),


        );
    },childCount: name.length))
    );
    
  }

}