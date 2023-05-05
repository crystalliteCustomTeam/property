import 'package:flutter/material.dart';

rooms(String bedRooms, String baths, String garage, Color customcolors,
    [double fontSize = 15, double iconSize = 16,double spacing=8,double containerWidth=290]) {
  return Container(
    width: containerWidth,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Icon(Icons.bed, color: Color(0xffF5C945)),
             SizedBox(
              width: spacing,
            ),
            Text('${bedRooms} Beds',
                style: TextStyle(fontSize: fontSize, color: customcolors)),
          ],
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Icon(Icons.bathtub, color: Color(0xffF5C945)),
             SizedBox(
              width: spacing,
            ),
            Text('${baths} Baths',
                style: TextStyle(fontSize: fontSize, color: customcolors)),
          ],
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Icon(Icons.car_crash, color: Color(0xffF5C945)),
             SizedBox(
              width: spacing,
            ),
            Text('${garage} Garage',
                style: TextStyle(fontSize: fontSize, color: customcolors)),
          ],
        )
      ],
    ),
  );
}
