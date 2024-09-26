import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: carouseleg(),
  ));
}



class carouseleg extends StatefulWidget {
  const carouseleg({super.key});

  @override
  State<carouseleg> createState() => _carouselegState();
}

class _carouselegState extends State<carouseleg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(
          items: [
            Image(image: AssetImage("assets/image/doll.jpg")),
            Image(image: AssetImage("assets/image/london.jpg")),
            Image(image: AssetImage("assets/image/newyrk.jpg")),
            Image(image: AssetImage("assets/image/van.jpg")),
        ],
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        )
    )
      ),
    );
  }
}
