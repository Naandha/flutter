import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: atmcardui(),
  ));
}

class atmcardui extends StatefulWidget {
  const atmcardui({super.key});

  @override
  State<atmcardui> createState() => _atmcarduiState();
}

class _atmcarduiState extends State<atmcardui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(children: [
            Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(
                      "assets/image/atm.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                top: 20,
                right: 20,
                child:Text("CSB Bank",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white),)),
            Positioned(
              left: 20,
              top: 90,
              child: Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("assets/image/chip.jpg"),
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            Positioned(
              right: 20,
              top: 90,
              child: Icon(Icons.wifi,color: Colors.white,),
              // child: Container(
              //     height: 40,
              //     width: 50,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15),
              //       image: DecorationImage(
              //         image: AssetImage("assets/images/capsi.jpeg"),
              //         fit: BoxFit.cover,
              //       ),
              //     )),
            ),

            Positioned(
                left:180,bottom:40,
                child: Row(
                  children: [Column(
                    children: [
                      Text("VALID",style: TextStyle(color: Colors.white,fontSize: 8),),
                      Text("THRU",style: TextStyle(color: Colors.white,fontSize: 8),),
                    ],
                  ),
                    SizedBox(width: 5,),
                    Text("03/24",style: TextStyle(color: Colors.white,fontSize: 16)),
                  ],
                )),

            Positioned(
                left: 50,
                top: 130,
                child: Center(
                    child: Text(
                      "6522  3200 2345 9876",
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ))),
            Positioned(
                left: 30,
                bottom: 20,
                child: Center(
                    child: Text(
                      "VINAYAK HEDGE",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ))),

            Positioned(
              bottom: 20,right: 20,
              child: Text("RuPay",style: TextStyle(
                color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,
              ),),
            )
            // child:Image(image: AssetImage("assets/images/rupay.jpeg")) ,
            //
            //    )),

          ]),
        ));
  }
}