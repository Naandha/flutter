import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: GridviewCustom(),
  ));
}

class GridviewCustom extends StatelessWidget {
  var color = [Colors.lightGreen, Colors.lightGreenAccent, Colors.green, Colors.greenAccent];

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
      body: GridView.custom(
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card(color: color[index],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(icon[index]),
                    Text(data[index], style: GoogleFonts.aBeeZee(fontSize:20)),
                  ],
                ));
          }, childCount: icon.length)),
    );
  }
}