import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridviewCount(),
  ));
}

class GridviewCount extends StatelessWidget {
  var color = [Colors.orange, Colors.red, Colors.yellow, Colors.brown];
  var icon = [
    Icons.account_balance,
    Icons.abc_outlined,
    Icons.ac_unit_outlined,
    Icons.access_alarm
  ];
  var data = [
    "account_balance",
    "abc_outlined",
    "ac_unit_outlined",
    "access_alarm"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(icon.length, (index) {
          return Card(
            color: color[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(icon[index]), Text(data[index])],
            ),
          );
        }),
      ),
    );
  }
}