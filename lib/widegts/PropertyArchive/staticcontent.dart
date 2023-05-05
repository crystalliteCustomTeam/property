import 'package:flutter/material.dart';

staticContent(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Text(
        "Discover Best",
        style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Color(0xff0F2F44),
            fontSize: 24),
      ),
      Text(
        "Suitable Property",
        style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Color(0xff0F2F44),
            fontSize: 24),
      )
    ],
  );
}