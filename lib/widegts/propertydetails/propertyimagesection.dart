import 'package:flutter/material.dart';


imagesection(String image){
  return Container(
    width: 500,
    height: 250,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image),fit: BoxFit.fill)
    ),
  );
}

