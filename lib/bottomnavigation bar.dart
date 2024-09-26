import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Bottomnavigation()));
}

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int index = 0; // Start with the first item
  var screen = [
    Text("PROFILE"),
    Text("CHAT"),
    Text("CALL"),
    Text("CONTACT"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("WHATSAPP"),
        actions: [
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("INVITE")),
              PopupMenuItem(child: Text("REFRESH")),
              PopupMenuItem(child: Text("LOGOUT")),
            ];
          }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), label: "Contact"),
        ],
      ),
      body: Center(child: screen[index]),
    );
  }
}