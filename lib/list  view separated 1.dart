import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Separated(),
  ));
}

class Separated extends StatelessWidget {
  var name = [
    "List Item 0",
    "List Item 1",
    "List Item 2",
    "List Item 3",
    "List Item 4",
    "List Item 5",
    "List Item 6",
    "List Item 7",
    "List Item 8",
    "List Item 9",
    "List Item 10"
    "List Item 11",
    "List Item 12",
    "List Item 13",
    "List Item 14",
    "List Item 15",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ListView.separated()",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            child: ListTile(
              title: Text(name[index]),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Card(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                "Separator ${index}",
              ),
            ),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}