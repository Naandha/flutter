import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Cities(),
  ));
}

class Cities extends StatelessWidget {
  var city = ["Delhi", "Finland", "London", "Vancouver", "New york"];
  var country = ["India", "Europe", "UK", "Canada", "Amsterdam"];
  var population = ["32.9m", "5.54m", "8.8m", "2.6m", "1.9"];
  var image = [
    "assets/image/delhi.png","assets/image/finland.jpg","assets/image/london.jpg","assets/image/van.jpg","assets/image/newyrk.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          centerTitle: true,
          title: Text(
            "Cities Around World",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Card(
              color: Colors.orange,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image[index]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        city[index],
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        country[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Population: ${population[index]}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: city.length,
      ),
    );
  }
}