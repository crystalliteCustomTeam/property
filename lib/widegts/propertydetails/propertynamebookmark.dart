import 'package:flutter/material.dart';

propertynamebookmark(context,String Name,String Address){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w800),),
            Text(Address,style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.w500),),
          ],
        ),
      ),
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
          }, icon: Icon(Icons.bookmark_border,size: 30),
        ),
      )
    ],
  );
}


