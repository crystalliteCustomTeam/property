import 'package:flutter/material.dart';

dividerwithtext(String dividerText){
  return Row(
      children: <Widget>[
        Expanded(
            child: Divider()
        ),

        Text(dividerText,style: TextStyle(fontSize: 18)),

        Expanded(
            child: Divider()
        ),
      ]
  );
}