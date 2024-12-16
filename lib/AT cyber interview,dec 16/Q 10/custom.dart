import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ratinbar(),debugShowCheckedModeBanner: false,));
}
class ratinbar extends StatefulWidget {
  @override
  _ratinbarState createState() => _ratinbarState();
}
class _ratinbarState extends State<ratinbar> {
  int _currentRating = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(5, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentRating = index + 1;
              });
            },
            child: Icon(
              index < _currentRating ? Icons.star : Icons.star_border,
              color: Colors.purpleAccent,
              size: 30,
            ),
          );
        }),
      ),
    );
  }
}
