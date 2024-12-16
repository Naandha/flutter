import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginpage.dart';


// void main() {
//   runApp(MaterialApp(
//     home: registrationpag(),
//   ));
// }

class registrationpag extends StatefulWidget {
  const registrationpag({super.key});

  @override
  State<registrationpag> createState() => _registrationpagState();
}

class _registrationpagState extends State<registrationpag> {
  late SharedPreferences date;

  TextEditingController name_controler = TextEditingController();
  TextEditingController username_controler = TextEditingController(); // Correct controller used here
  TextEditingController password_controler = TextEditingController();

  @override
  void dispose() {
    name_controler.dispose();
    username_controler.dispose();
    password_controler.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Text(
                "Registration",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                controller: name_controler,
                decoration: InputDecoration(
                    labelText: "First Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                controller: username_controler, // Fixed the controller here
                decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextField(
                controller: password_controler,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  register();
                },
                child: Text("Register"), // Updated button label
              ),
            )
          ],
        ),
      ),
    );
  }

  void register() async {
    date = await SharedPreferences.getInstance();
    String name = name_controler.text;
    String username = username_controler.text;
    String password = password_controler.text;

    if (username != '' && password != '') {
      date.setString("name", name);
      date.setString("username", username);
      date.setString("password", password);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => pagelog()), // Correct navigation
      );
    }
  }
}