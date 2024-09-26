import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(MaterialApp(home:loginpage(),
  ));
}


class loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(color: Colors.lightBlue,
         child:
         Column(children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("loginpage",style:TextStyle(fontSize: 40,color: Colors.pinkAccent,fontWeight: FontWeight.bold),),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 40,top:70,right:70),
             child: TextField(
               decoration: InputDecoration(
                 hintText: "username",
                 labelText: "username",
                 border:OutlineInputBorder(borderRadius: BorderRadius.circular(30) ),

               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 40,top:70,right:70),
             child: TextField(
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.password),
                   suffixIcon: Icon(Icons.visibility_off),
                   hintText: "password",
                   labelText: "password",
                   border:OutlineInputBorder(borderRadius: BorderRadius.circular(30) )),

               ),
           ),
           SizedBox(height: 50,),
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Colors.purple,foregroundColor:Colors.yellowAccent  ),


          onPressed: (){

      }, child:Text ("login")),

         ],)
     ),
   );

  }

}