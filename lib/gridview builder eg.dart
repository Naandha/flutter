import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridviewbuilderexample(),));
}
class Gridviewbuilderexample extends StatefulWidget {
  const Gridviewbuilderexample({super.key});

  @override
  State<Gridviewbuilderexample> createState() => _GridviewbuilderexampleState();
}

class _GridviewbuilderexampleState extends State<Gridviewbuilderexample> {
  var icon=[
    Icons.person,
    Icons.local_taxi,
    Icons.calendar_today,
    Icons.navigation,
    Icons.help,
    Icons.phone,
    Icons.settings,
    Icons.logout];
  var data=["My profile",
    "Book a cab",
    "Booking Schedule",
    "Track Your Cab",
    "Help & Feedback",
    "Call to transport",
    "Settings",
    "Log-out"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
          child: Text("Menu")),
        backgroundColor: Colors.yellow[600],),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
          itemBuilder: (context,index){

            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(color: Colors.white,
                      elevation: 5,

                      child: Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Center(
                          child: Icon(icon[index],
                            color: Colors.yellow,
                            size:50,

                          ),
                        ),
                      ),
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(70)),
                    ),
                    Text(data[index]),
                  ],
                ),
              ),
            );

          },itemCount: icon.length,
        ),
      ),
    );
  }
}