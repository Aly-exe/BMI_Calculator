import "package:flutter/material.dart";
Widget CalculateButton(
  {
    required String text,
    required Function()?  onPressed,
}
){
  return Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blue),
              child: TextButton(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: onPressed,
              ),
            ),
          );
}