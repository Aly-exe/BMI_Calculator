import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget HeightSliderContainer(
    {int manheight=155,required double Height, required double Width,
    required Widget sliderwidget,
     }) {
  
  return Container(
    height: Height,
    width: Width,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Heigth",
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.w900, color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              "${manheight.round()}",
              style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            Text(
              "cm",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        sliderwidget
      ],
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0XFFBB2525),
    ),
  );
}
