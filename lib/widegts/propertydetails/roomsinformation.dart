import 'package:flutter/material.dart';

rooms(String bedRooms,String baths,String garage){
  return Container(
    width: 290,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Icon(Icons.bed,color: Color(0xffF5C945)),
            const SizedBox(
              width: 10,
            ),
            Text('${bedRooms} Beds',style: const TextStyle(
                fontSize: 15
            )),
          ],
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Icon(Icons.bathtub,color: Color(0xffF5C945)),
            const SizedBox(
              width: 10,
            ),
            Text('${baths} Baths',style: const TextStyle(
                fontSize: 15
            )),
          ],
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Icon(Icons.car_crash,color: Color(0xffF5C945)),
            const SizedBox(
              width: 10,
            ),
            Text('${garage} Garage',style:const TextStyle(
                fontSize: 15
            )),
          ],
        )
      ],
    ),
  );
}