import 'package:flutter/material.dart';



// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage2(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class LoginPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "assets/image/instagram.png",
              height: 50,
            ),
            SizedBox(height: 40.0),
            TextField(
              decoration: InputDecoration(
                labelText: "Username, email or mobile number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            // Login Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                },
                child: Text("Log in",style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
              },
              child: Text("Forgot password?",style: TextStyle(color: Colors.black),),
            ),
            Spacer(),
            SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.white,side: BorderSide(color: Colors.blue)),
                onPressed: () {
                },
                child: Text("Create new account",style: TextStyle(color: Colors.blue),),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "Meta",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}