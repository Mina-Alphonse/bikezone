import 'package:flutter/material.dart';

Container customContainer({
  required double w,
  required double h,
  Color containerColor = Colors.black,
  String title = "Some Title",
  String content = "Some Content",
}) {
  return Container(
    height: h * 0.42,
    width: w * 0.49,
    decoration: BoxDecoration(
      color: containerColor,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green,
            fontSize: w * 0.04,
          ),
        ),
        Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: w * 0.02,
          ),
        ),
      ],
    ),
  );
}
