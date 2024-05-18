import 'package:bmi/constants/colors.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? result;
  final int? Age;
  final String? gender;
  final int? height;
  final int? weight;
  Result({
    @required this.result,
    @required this.Age,
    @required this.gender,
    @required this.height,
    @required this.weight,
  });

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF192655),
      appBar: AppBar(
        backgroundColor: Color(0XFF3FA796),
        title: Center(
          child: Text("BMI Calculator"),
        ),
        titleTextStyle: TextStyle(color: whitecolor, fontSize: 22.0),
        iconTheme: IconThemeData(color :whitecolor),

      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Gender : ${gender} ',
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            "Height : ${height} ",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            "Age : ${Age} ",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            "Weight : ${weight} ",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            "BMI : ${result} ",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
