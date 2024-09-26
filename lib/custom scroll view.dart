import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 void main(){
     runApp(MaterialApp(
       home: scroll(),
     ));
   }

class scroll extends StatefulWidget {
  const scroll({super.key});

  @override
  State<scroll> createState() => _scrollState();
}

class _scrollState extends State<scroll> {

  var image=[
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
    Colors.lightBlue,
    Colors.purple,
    Colors.orange,
    Colors.cyan,
    Colors.green,
    Colors.lightBlue,
    Colors.purple,
    Colors.orange,
    Colors.cyan,
    Colors.green,


  ];
  var name = [
    "John Judah",
    "Bisola Akanbi",
    "Eghosa Iku",
    "Andrew Ndebuisi",
    "Arinze Dayo",
    "John Judah",
    "Bisola Akanbi",
    "Eghosa Iku",
    "Andrew Ndebuisi",
    "Arinze Dayo",
  ];
  var phone = [
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230",
    "9874561230"
  ];
  var icon = [
    Icons.account_balance,
    Icons.abc_outlined,
    Icons.ac_unit_outlined,
    Icons.access_alarm,
    Icons.account_balance,
    Icons.account_balance,
    Icons.abc_outlined,
    Icons.ac_unit_outlined,
    Icons.access_alarm,
    Icons.account_balance,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:[
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("CUSTOM SCROLL VIEW"),
            actions: [
              IconButton(onPressed:(){} , icon:Icon (Icons.search)),
              IconButton(onPressed:(){} , icon:Icon (Icons.favorite)),
            ],
            bottom: AppBar(
              title: Container(
                child: TextField(
                  decoration: InputDecoration(
                  border: InputBorder.none,
                    hintText: "search something.....",
                    prefixIcon: Icon(Icons.search),

                ),

                ),

              ),
            ),
            expandedHeight: 120,

          ),
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Card(
              color: color[index],
              child: ListTile(
                leading: Image(image: AssetImage(image[index])),
                  title:Text(name[index]),
                  subtitle:Text(phone[index]),
              ),
              );
            },childCount: name.length
          )),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              child: Text("Sliver grid ",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Card(
                  color: color[index],
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(icon[index]),
                        Text(name[index]),
                      ]));
            }, childCount: name.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          )
        ],
      ),
    );
  }
}



