

import 'package:flutter/material.dart';
import 'package:flutterproject/hive1/registration.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'logins.dart';



void main() async {
  await Hive.initFlutter();
  await Hive.openBox('usersBox');

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => LoginPage111(),
      '/login': (context) => LoginPage111(),
      '/register': (context) => RegisterPage11(),
    },
  ));
}
