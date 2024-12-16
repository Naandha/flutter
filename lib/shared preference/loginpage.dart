import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/shared%20preference/registrationpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Homepage.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: pagelog(),
  ));
}

class pagelog extends StatefulWidget {
  const pagelog({super.key});

  @override
  State<pagelog> createState() => _pagelogState();
}

class _pagelogState extends State<pagelog> {
  late SharedPreferences data;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  late bool newuser;
  String? regusername;
  String? regpassword;

  @override
  void initState() {
    super.initState();
    getuser();
    checklogin();
  }
void getuser() async{
    data= await SharedPreferences.getInstance();
    regusername = data.getString("username") ??'';
    regpassword = data.getString("password") ?? '';
}
  void checklogin() async {
    data = await SharedPreferences.getInstance();
    newuser = (data.getBool('newuser') ?? true);

    if (!newuser) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => homeshared()));
    } else {
      // Retrieve registered username and password

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("LOGIN PAGE",style: TextStyle(fontSize: 30),),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Container(
                color: Colors.white,
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                    hintText: 'Username',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: TextField(
                      controller: password,  // Use password controller here
                      obscureText: true, // This makes the password hidden
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      onPressed: () {
                        var user = username.text;
                        var pass = password.text;

                        // Compare entered username and password with stored values
                        if (user == regusername && pass == regpassword && user!='' && pass!= '') {
                          print('Login successfully');
                          data.setString("username", user);
                          data.setBool('newuser', false);

                          // Navigate to the home page after successful login
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => homeshared(),
                            ),
                          );
                        }
                      },
                      child: Text('Login'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),
                    child: TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>registrationpag()));
                    }, child: Text("Create an accout"),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}