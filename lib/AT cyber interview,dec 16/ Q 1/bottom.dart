import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
void main(){
  runApp(const MaterialApp(home: bottom(),debugShowCheckedModeBanner: false,));
}
class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int index = 0;
  var screen = [const ScreenOne(), const ScreenTwo(), const ScreenThree()];

  void _handleIndexChanged(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(padding:  const EdgeInsets.only(bottom: 10),
          child: CrystalNavigationBar(
            currentIndex: index,
            height: 60,
            unselectedItemColor: Colors.black38,
            backgroundColor: Colors.black.withOpacity(0.1),
            onTap: _handleIndexChanged,
            items: [
              CrystalNavigationBarItem(icon: Icons.home),
              CrystalNavigationBarItem(icon: Icons.arrow_forward),
              CrystalNavigationBarItem(icon: Icons.stop),
            ],
          )),
      body: Center(child: screen[index]),
    );
  }
}
class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("screen 1",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("screen 2",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)),
    );
  }
}

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("screen 3",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),)),
    );
  }
}