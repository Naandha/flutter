
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: forms(),
    debugShowCheckedModeBanner: false,
  ));
}
class forms extends StatefulWidget {
  const forms({super.key});
  @override
  State<forms> createState() => _formsTState();
}
class _formsTState extends State<forms> {
  GlobalKey<FormState> formKey = GlobalKey();
  bool showPass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "name",
                    labelText: "full name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    prefixIcon: const Icon(Icons.drive_file_rename_outline),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: const Icon(Icons.email),
                  ),
                  validator: (username) {
                    if (username!.isEmpty ||
                        !username.contains('@') ||
                        !username.contains('.')) {
                      return "Enter valid Email";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                child: TextFormField(
                  obscureText: showPass,
                  obscuringCharacter: "+",
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(
                      icon: Icon(showPass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          showPass = !showPass;
                        });
                      },
                    ),
                  ),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Enter valid password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
