import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hotel ui.dart';




void main(){
  runApp(MaterialApp(home: login2(),

  ),);
}
class login2 extends StatefulWidget {
  const login2({super.key});

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  GlobalKey<FormState>formkey=GlobalKey();
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:
        Form(
          key: formkey,
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60,top: 80),
                  child: Text("Loginpage",style: TextStyle(
                      fontSize: 30,color: Colors.deepOrange,
                      fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70,right: 70,top: 80),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "username",
                        labelText: "username",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))
                    ),
                    validator: (username){
                      if(username!.isEmpty || !username.contains('@') || !username.contains('.')){
                        return "enter valid Email";
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 70,left: 70,top: 80),
                  child: TextFormField(
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            if(showpass){
                              showpass==false;
                            }
                            else{
                              showpass==true;
                            }
                          });
                        }, icon: Icon(showpass==true ?Icons.visibility_off :Icons.visibility),),
                        hintText: "password",
                        labelText: "password",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))

                    ),
                    validator: (password){
                      if(password!.isEmpty || password.length<6){
                        return "Enter valid password";
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                ),

                SizedBox(height: 50,),
                ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[200],
                ),
                    onPressed: (){
                      var valid=formkey.currentState!.validate();
                      if(valid){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HotelUI()));
                      }

                    },child:Text("Login")),
                TextButton(onPressed: (){}, child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text("not a user ? create an account"),
                ),
                ),
              ] ),
        ),

      ), );



  }
}