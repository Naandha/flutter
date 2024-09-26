import 'package:flutter/material.dart';
import 'package:flutterproject/tab%20bar.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Assignmentwork2(),));
}

class Assignmentwork2 extends StatefulWidget {
  const Assignmentwork2({super.key});

  @override
  State<Assignmentwork2> createState() => _Assignmentwork2State();
}

class _Assignmentwork2State extends State<Assignmentwork2> {
  int index = 0;
  var screen = [
    Text("Profile"),
    Text("Chat"),
    Text("Call"),
    Text("Contact"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white70,
          title: Text("Home"),


        ),
        drawer: Drawer(backgroundColor:
        Colors.white70,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("nanda"),
                accountEmail: Text("nanda@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/profile.png"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(backgroundImage: AssetImage(
                      "assets/image/london.jpg")),
                ],
                decoration: BoxDecoration(image: DecorationImage(
                    image: AssetImage("assets/image/london.jpg"),
                    fit: BoxFit.fill)),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("home"),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Send"),
              ),
              ListTile(
                leading: Icon(Icons.update),
                title: Text("update"),
              ),
              ListTile(
                leading: Icon(Icons.drafts),
                title: Text("Draft"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (tapindex) {
              setState(() {
                index = tapindex;
              });
              if (index == 3) {
                showModalBottomSheet(context: context, builder: (context) {
                  return ListView(
                    children: [
                      ListTile(
                        title: Text("data 1"),
                        subtitle: Text("data 2"),
                      ),
                      ListTile(
                        title: Text("data 11"),
                        subtitle: Text("data 22"),
                      ),
                      ListTile(
                        title: Text("data 111"),
                        subtitle: Text("data 222"),
                      ),
                    ],
                  );
                });
              }
            },
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.shifting,
            backgroundColor: Colors.white70,


            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message,), label: "email"),
              BottomNavigationBarItem(icon: Icon(Icons.phone,), label: "Call",),
              BottomNavigationBarItem(
                icon: Icon(Icons.contact_page,), label: "Contact",),
            ]),
        body: index==0?tab(): Text(" wrong page "),
      ),
    );
  }
}