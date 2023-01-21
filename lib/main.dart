import 'package:flutter/material.dart';
import 'package:udhyog4/login.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    title: 'UDHYOG 4.0',
    theme: ThemeData(primarySwatch: Colors.cyan),
  ));
}

class MyApp extends StatelessWidget {
  //stateless widget class
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginScreen(); //return to statefullwidget of MyScreen class
  }

  static of(BuildContext context) {}
}
