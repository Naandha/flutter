import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'adminpage.dart';
import 'db helper.dart';
import 'db registrationpage.dart';
import 'db user.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();
  bool showpass = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Text(
                  "Login here...",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 70, right: 70),
                child: TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Username",
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    validator: (username) {
                      if (username!.isEmpty ||
                          !username.contains("@") ||
                          !username.contains('.')) {
                        return "Enter valid Email";
                      } else {
                        return null;
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 30, right: 70),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: showpass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showpass) {
                            showpass = false;
                          } else {
                            showpass = true;
                          }
                        });
                      },
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Enter valid password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 70),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white38,
                  ),
                  onPressed: () async {
                    if (formkey.currentState!.validate()) {
                      var data = await SqfHelper.checkUser(
                        _usernameController.text,
                        _passwordController.text,
                      );

                      if (data != null) {
                        if (_usernameController.text == "admin@gmail.com" &&
                            _passwordController.text == "admin1") {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeAdmin()),
                          );
                          return;
                        } else {
                          String name = data['name'];
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeUser(name: name),
                            ),
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text('Invalid username or password')),
                        );
                      }
                    }
                  },
                  child: Text("Submit"),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Registration()));
                },
                child: Text("Not a user? Create an account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

