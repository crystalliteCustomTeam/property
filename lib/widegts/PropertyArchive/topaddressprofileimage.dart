import 'package:flutter/material.dart';

topsection(String city, String state, String profileimageurlfromasset) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location',
                style: TextStyle(fontSize: 16, color: Color(0xff0F2F44),),
              ),
              Text(
                "${city},${state}",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff0F2F44),
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
        ),
        Container(
          child: CircleAvatar(
            backgroundImage: AssetImage(profileimageurlfromasset),
            radius: 25,
          ),
        )
      ],
    ),
  );
}
