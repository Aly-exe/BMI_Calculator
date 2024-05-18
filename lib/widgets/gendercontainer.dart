import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget GenderContainer(
    {
    required Function()? onTap,
    required IconData icon,
    required bool isMale,
    required String text,
    required Color iconandtextcolor,
    required Color backgroundcolor,
    required var Width,
    required var Height,
    }) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: Width,
      height: Height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 70.0,
            color:iconandtextcolor,
          ),
          SizedBox(
            height: Height*.045,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: iconandtextcolor,
            ),
          ),
          SizedBox(
            height: Height*.045,
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color:  backgroundcolor ,
      ),
    ),
  );
}
