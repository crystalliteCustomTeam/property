import 'package:flutter/material.dart';

topStaticDetails(context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text("Details",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w800
      ),),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: Color(0xffEAF1FF),
            borderRadius: BorderRadius.circular(5)
        ),
        child: IconButton(
          autofocus: false,
          onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.keyboard_arrow_left,size: 30),
        ),
      )
    ],
  );
}