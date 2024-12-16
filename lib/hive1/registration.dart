

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class RegisterPage11 extends StatefulWidget {
  @override
  _RegisterPage11State createState() => _RegisterPage11State();
}

class _RegisterPage11State extends State<RegisterPage11> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void registerUser() async {
    var box = Hive.box('usersBox');
    String username = usernameController.text;
    String password = passwordController.text;
    //Check if the username already exists
    if (box.get('username') == username) {
      // Show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Username already exists')),
      );
      return;
    }
    if (username.isNotEmpty && password.isNotEmpty) {
      box.put(username, password);
      Navigator.pushReplacementNamed(context, '/login');
    } else {
      print("Please enter all fields");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
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
            onPressed: registerUser,
            child: Text('Register'),
          ),
        ],
      ),
    );
  }
}
