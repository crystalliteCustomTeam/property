import 'package:flutter/material.dart';

socialmedialoginbutton(String socialmediaicon , String socialmedianame , dynamic callback ){
  return OutlinedButton(
    onPressed: callback,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(socialmediaicon),
        ),
        Text(
          socialmedianame,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 15),
        )
      ],
    ),
    style: OutlinedButton.styleFrom(
        padding:
        EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10))),
  );
}