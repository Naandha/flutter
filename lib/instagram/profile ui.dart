import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Instaprofilui()));
}

class Instaprofilui extends StatelessWidget {
  const Instaprofilui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "nandha__",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.add_box_outlined, size: 28),
                    onPressed: () {},
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(Icons.menu, size: 28),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage:
                    AssetImage('assets/image/dp.jpg'), // Replace with your profile image
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        profileStat("Posts", "54"),
                        profileStat("Followers", "2.5K"),
                        profileStat("Following", "345"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "nandha",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "IT professional | Developer |",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "📍 Kerala, India",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Edit Profile"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on, color: Colors.black)),
                      Tab(icon: Icon(Icons.video_library, color: Colors.black)),
                      Tab(icon: Icon(Icons.person_pin_outlined, color: Colors.black)),
                    ],
                  ),
                  SizedBox(
                    height: 400,
                    child: TabBarView(
                      children: [
                        gridPostSection(),

                        Center(child: Text("Reels Section", style: TextStyle(fontSize: 18))),

                        Center(child: Text("Tagged Posts Section", style: TextStyle(fontSize: 18))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget to display the profile stats
  Widget profileStat(String label, String count) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(label, style: TextStyle(color: Colors.grey[700])),
      ],
    );
  }

  Widget gridPostSection() {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 posts per row
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 1,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            image: DecorationImage(
              image: AssetImage('assets/london.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}