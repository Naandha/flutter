import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'loginpage.dart';

class homeshared extends StatefulWidget {
  const homeshared({super.key});

  @override
  State<homeshared> createState() => _homesharedState();
}

class _homesharedState extends State<homeshared> {
  late SharedPreferences data;
  String? username;
  late String regusername;
  late String regpassword;
  late String name;

  // Make this nullable to handle cases where the user might not be logged in.

  @override
  void initState() {
    super.initState();
    fetchdata(); // Call fetchdata in initState to get the username from SharedPreferences
  }

  void fetchdata() async {
    data = await SharedPreferences.getInstance();
    setState(() {
      username = data.getString('username')!;
      name=data.getString("password")!;

      // Retrieve the username, might be null if not set
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$username"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the username if it's not null, otherwise show a placeholder
            Text(
              username != null ? 'Welcome, $username!' : 'Welcome, Guest!',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Log the user out by resetting the 'newuser' flag
                data.setBool("newuser", true);
                data.getString("username");
                data.getString("password");
                // Navigate to the login page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => pagelog()),
                );
              },
              child: Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}