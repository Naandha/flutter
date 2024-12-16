import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class leftWidget extends StatelessWidget {
  const leftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return ListTile(
        leading:Icon(Icons.info),
        title:Text("info"),
        trailing:Icon(Icons.account_balance)
      );
    }
    );
  }
}
