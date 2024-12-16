import 'package:flutter/material.dart';
import 'package:flutterproject/instagram/screen3.dart';
import 'package:flutterproject/instagram/screen4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "𝓘𝓷𝓼𝓽𝓪𝓰𝓻𝓪𝓶",
                style: TextStyle(
                  fontSize: 48.0,
                ),
              ),
              SizedBox(height: 40),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "assets/image/instagram.png"),
              ),
              SizedBox(height: 20),
              Text(
                "jacob_w",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage2()));

                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                  backgroundColor: Colors.blue,
                ),
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextButton(
                onPressed: () {
                },
                child: Text(
                  "Switch accounts",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MobileNumberScreen()));

                      },
                      child: Text(
                        "Sign up.",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}