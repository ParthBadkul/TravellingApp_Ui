import 'package:flutter/material.dart';
import 'package:hey/header.dart';
import 'HomePage.dart';
import 'Destination_Screen.dart';
import 'models/destination_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color.fromARGB(255, 95, 187, 161),
          accentColor: Color.fromARGB(147, 76, 137, 180),
          backgroundColor: Color.fromARGB(255, 19, 142, 203)),
      home: HomePage(),
    );
  }
}
