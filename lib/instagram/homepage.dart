
import 'package:flutter/material.dart';
import 'package:flutterproject/instagram/profile%20ui.dart';
import 'package:flutterproject/instagram/searchpage.dart';


void main() {
  runApp(MaterialApp(home: Instahomescreen()));
}

class Instahomescreen extends StatefulWidget {
  const Instahomescreen({super.key});
  @override
  _InstahomescreenState createState() => _InstahomescreenState();
}
class _InstahomescreenState extends State<Instahomescreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                storyAvatar('assets/image/dp.jpg'),
                storyAvatar('assets/image/dp.jpg'),
                storyAvatar('assets/image/dp.jpg'),
                storyAvatar('assets/image/dp.jpg'),
                storyAvatar('assets/image/dp.jpg'),
                storyAvatar('assets/image/dp.jpg'),
                storyAvatar('assets/image/dp.jpg'),
                storyAvatar('assets/image/dp.jpg'),
                storyAvatar('assets/image/dp.jpg'),
              ],
            ),
          ),
          postSection(
            profileImagePath: 'assets/image/11.jpg',
            postImagePath: 'assets/image/hotel3.jpg',
            username: 'nihara',
            caption: 'beauty of wayanad',
            likes: '130K',
            comments: '680',
          ),
          postSection(
            profileImagePath: 'assets/image/22.jpg',
            postImagePath: 'assets/image/tomato.jpg',
            username: 'arun',
            caption: 'healthy veg',
            likes: '13K',
            comments: '1500',
          ),
        ],
      ),
    ),

    InstaSearchPage(),

    Center(child: Text("Reels Page")),

    Instaprofilui(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 0
          ? PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  "assets/image/profile.png",
                  height: 80,
                  fit: BoxFit.contain,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_outline_outlined),
                    iconSize: 25,
                    onPressed: () {},
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.message),
                    iconSize: 20,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      )
          : null,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  static Widget storyAvatar(String imagePath) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.red, width: 3.0)),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(imagePath),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  static Widget postSection({
    required String profileImagePath,
    required String postImagePath,
    required String username,
    required String caption,
    required String likes,
    required String comments,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(profileImagePath),
          ),
          title: Text(
            username,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: Icon(Icons.more_vert),
        ),
        Image.asset(
          postImagePath,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_outline_outlined, size: 28),
                    onPressed: () {},
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.comment, size: 28),
                  SizedBox(width: 20),
                  Icon(Icons.send, size: 28),
                ],
              ),
              Icon(Icons.bookmark_border, size: 28),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Liked by $likes and others',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: RichText(
            text: TextSpan(
              text: '$username ',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
              children: [
                TextSpan(
                  text: caption,
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'View all $comments comments',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}