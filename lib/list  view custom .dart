import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listviewcustom(),
    debugShowCheckedModeBanner: false,
  ));
}

class Listviewcustom extends StatelessWidget {
  var name = ["John Judah", "Bisola Akanbi", "Eghosa Iku", "Andrew Ndebuisi", "Arinze Dayo",];
  var phone = ["9874561230", "9874561230", "9874561230", "9874561230", "9874561230",];
  var color = [Colors.blue, Colors.purple, Colors.orange, Colors.blue, Colors.green,];

  var image = ["assets/image/profile.png","assets/image/profile.png","assets/image/profile.png","assets/image/profile.png","assets/image/profile.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Contact List",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.custom(childrenDelegate:
      SliverChildListDelegate(List.generate(name.length, (index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(image[index]),
            ),
            title: Text(name[index]),
            subtitle: Text(phone[index]),
          ),
        );
      }))),
    );
  }
}