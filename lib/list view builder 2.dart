import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: builder(),
  ));
}

class builder extends StatelessWidget {
  var firstletter = ["F", "A", "I", "H", "A", "A", "A", "M", "F"];
  var name = [
    "Facebook",
    "A10 NETWORKS INC",
    "Intel Corp",
    "HP Inc",
    "Advanced Micro Devices Inc",
    "Apple",
    "Amazone com.Inc",
    "Microsoft Corporation",
    "Facebook"
  ];
  var values = [
    '\$3333',
    '\$18345',
    '\$6978',
    '\$4567',
    '\$9876',
    '\$56789',
    '\$89765',
    '66668',
    '12345'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          child: ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue,
              child: Text(firstletter[index],
                  style: TextStyle(color: Colors.white)),
            ),
            title: Text(name[index]),
            trailing: Text("\$ ${values[index]}"),
          ),
        );
      },
        itemCount: firstletter.length,),
    );
  }
}


