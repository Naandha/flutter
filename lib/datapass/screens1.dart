import 'package:flutter/material.dart';
import 'package:flutterproject/datapass/dammyproduts1.dart';
import 'package:flutterproject/datapass/screens2.dart';

void main(){
  runApp(MaterialApp(home: screens1(),
    routes: {
      "screen2":(context)=>screens2(),
    },));
}

class screens1 extends StatefulWidget {
  const screens1({super.key});

  @override
  State<screens1> createState() => _screens1State();
}

class _screens1State extends State<screens1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10),
       children: dummyproducts1.map((product) => GestureDetector(
         child: Column(
           children: [
             Text(product["name"]),
             Image(image: AssetImage(product["image"]))
           ],
         ),
         onTap: () => getproduct(context, product["id"]),
       )).toList(),
      ),
    );
  }

void  getproduct(BuildContext context, product) {
  Navigator.pushNamed(context, "screens2", arguments: product);
  }
}



