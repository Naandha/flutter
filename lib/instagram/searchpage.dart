import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: InstaSearchPage()));
}

class InstaSearchPage extends StatelessWidget {
  final List<String> _images = [
    'assets/image/tomato.jpg',
    'assets/image/dress2.webp',
    'assets/image/hotel3.jpg',
    'assets/image/mouse.jpg',
    'assets/image/newyrk.jpg',
    'assets/image/doll.jpg',
    'assets/image/headset.webp',
    'assets/image/dress2.webp',
    'assets/image/finland.jpg',
    'assets/image/london.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        title: _buildSearchBar(),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: 1,
        ),
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(_images[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12),
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Color(0xFFF0F0F0),
          prefixIcon: Icon(Icons.search, color: Colors.black),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}