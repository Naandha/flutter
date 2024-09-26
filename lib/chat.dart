import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Chat(),
  ));
}

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  var name = [
    "nanda",
    "Rakhi",
    "Neenu",
    "Hana",
    "sudi",
    "sana",
    "nila",
    "minu",
    "tilu",
    "ridhu",
    "aaru",
    "midhu",
    "sneha"
  ];
  var phone = [
    "on the way",
    "12.00pm",
    "hello",
    "evideya?",
    "gd mrng",
    "hlo",
    "hi",
    "yep",
    "illa",
    "456",
    "yss yss",
    "und",
    "no way",
  ];
  var image = [
    "assets/image/profile.png",
    "assets/image/profile.png",
    "assets/image/profile.png",
    "assets/image/profile.png",
    "assets/image/profile.png",
    "assets/image/profile.png",
    "assets/image/profile.png",
    "assets/image/profile.png",
    "assets/image/profile.png",
    "assets/image/profile.png",
    "assets/image/profile.png",
    "assets/image/profile.png",
    "assets/image/profile.png"
  ];
  var color = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];
  var values = [
    "10.30am",
    "10.45am",
    "10.00am",
    "9.40am",
    "8.00am",
    "8.00am",
    "7.50am",
    "7.49am",
    "5.00am",
    "11.40pm",
    "11.49pm",
    "11.40pm",
    "10.30pm"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
              (context, index) {
            return Container(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(image[index]),
                ),
                title: Text(name[index]),
                subtitle: Text(phone[index]),
                trailing: Text(" ${values[index]}"),
              ),
            );
          },
          childCount: name.length,
        ),
      ),
    );
  }
}