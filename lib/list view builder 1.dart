import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: contactlist(),
  ));
}

class contactlist extends StatelessWidget {
  var name = [
    "John Judah",
    "Bisola Akanbi",
    "Eghosa Iku",
    "Andrew Ndebuisi",
    "Arinze Dayo",
    "Wakara Zimbu",
    "Emaechi Chinedu",
    "Osaretin Igbinomwanhia",
  ];
  var phone = [
    "123456789",
    "123456789",
    "123456789",
    "123456789",
    "234567890",
    "234567890",
    "234567890",
    "234567890",
  ];

  var color = [
    Colors.lightBlue,
    Colors.purple,
    Colors.orange,
    Colors.cyan,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Simple Contact List",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            // color: color[index],
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: (color[index]),

                child: Icon(Icons.person),
                foregroundColor: Colors.white,


              ),
              title: Text(name[index]),
              subtitle: Text(phone[index]),
              trailing: Icon(Icons.navigate_next),
            ),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
    
    
    
    
  


  