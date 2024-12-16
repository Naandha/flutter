
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


import '../bottameg/new2.dart';
import 'home.dart';



class LoginPage111 extends StatefulWidget {
  @override
  _LoginPage111State createState() => _LoginPage111State();
}

class _LoginPage111State extends State<LoginPage111> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void loginUser() async {
    var box = Hive.box('usersBox');
    String username = usernameController.text;
    String password = passwordController.text;

    if (box.containsKey(username)) {
      var storedPassword = box.get(username);
      if (storedPassword == password) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home111(username: username)));
      } else {
        print("Incorrect password");
      }
    } else {
      print("User not found");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(
        children: [
          TextField(
            controller: usernameController,
            decoration: InputDecoration(labelText: 'Username'),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          ElevatedButton(
            onPressed: loginUser,
            child: Text('Login'),
          ),
          SizedBox(height: 20,),
          TextButton(onPressed: (){
            Navigator.pushReplacementNamed(context, '/register');

          }, child: Text("register"))
        ],
      ),
    );
  }
}
