import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Card Example')),
        backgroundColor: Colors.deepOrangeAccent,
        body: Center(
          child: BankCard(),
        ),
      ),
    );
  }
}

class BankCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 220,
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Text(
              'CSB Bank',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: Image.asset(
              'assets/image/4.jpg',
              width: 50,
              height: 50,
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: Icon(
              Icons.atm,
              color: Colors.white,
              size: 30,
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            child: Text(
              '6522 3200 2345 9876',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                letterSpacing: 2,
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 20,
            child: Text(
              'VALID\nTHRU',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 12,
                height: 1.5,
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 80,
            child: Text(
              '08/23',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Text(
              'VINAYAK HEGDE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Text(
              'RuPay',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}