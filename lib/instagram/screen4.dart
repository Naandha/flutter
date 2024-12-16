import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MobileNumberScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
class MobileNumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            Text(
              "What's your mobile number?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            // Description
            Text(
              "Enter the mobile number where you can be contacted. No one will see this on your profile.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: "Mobile number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 8),
            Text(
              "You may receive WhatsApp and SMS notifications from us for security and login purposes.",
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
            SizedBox(height: 20),
            // Next Button
            ElevatedButton(
              onPressed: () {},
              child: Text("Next",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 50),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(8),
                // ),
              ),
            ),
            SizedBox(height: 10),
            // Sign Up with Email Button
            OutlinedButton(
              onPressed: () {

              },
              child: Text("Sign up with email",style: TextStyle(color: Colors.black),),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(8),
                // ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Center(
                child: Text(
                  "I already have an account",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}