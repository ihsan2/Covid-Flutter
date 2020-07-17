import 'package:flutter/material.dart';
import 'package:covid_office/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid19 Info',
      theme: ThemeData.dark(),
      home: MainScreen(),
    );
  }
}
