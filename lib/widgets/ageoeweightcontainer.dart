import 'package:bmi/constants/colors.dart';
import 'package:flutter/material.dart';

Widget AgeOrWeightContainer({
  required var Age,
  required String text,
  required Function() plusFunc,
  required Function() removeFunc,
}) {
  return Container(
    height: 180,
    width: 135.0,
    padding: EdgeInsets.symmetric(vertical: 10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: redcolor,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.w900, color: Colors.white),
        ),
        Text(
          "${Age}",
          style: TextStyle(
              fontSize: 50.0, fontWeight: FontWeight.w900, color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                onPressed: plusFunc,
                icon: Icon(
                  Icons.add,
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                onPressed: removeFunc,
                icon: Icon(Icons.remove),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
