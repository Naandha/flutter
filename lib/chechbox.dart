import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: checkbox(),
  ));
}



class checkbox extends StatefulWidget {
  const checkbox({super.key});

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool ischecked=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Checkbox(value: ischecked, onChanged:(bool ? value){
          setState(() {

            ischecked=value!;
          });
        }
        ),
      ),
    );
  }
}
