import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Separated2(),
  ));
}

class Separated2 extends StatelessWidget {
  var month = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: Text(month[index]),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 3 == 0) {
              return Card(
                child: Container(
                  child: Text("skip"),
                  color: Colors.redAccent,

                ),
              );
            } else {
              return SizedBox();
            }
          },
          itemCount: 12),
    );
  }
}