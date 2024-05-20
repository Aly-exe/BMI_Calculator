import 'package:bmi/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiApp()); 
}

class BmiApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      debugShowCheckedModeBanner: false,
      home:BmiHomePage());
  }
}