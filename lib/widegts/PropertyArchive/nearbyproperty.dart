import 'package:estate/widegts/propertydetails/roomsinformation.dart';
import 'package:flutter/material.dart';

nearby(context){
  return   Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Nearby your location",style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700
        ),),
        const SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.86,
              height: 100,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Color(0xffEAF1FF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    width: 95,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/property1.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("NEW YORK HOUSE",style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800
                        ),),
                        SizedBox(height: 5),
                        Text("520 N Btoudry Ave Los Angeles",style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700
                        ),),
                        SizedBox(height: 10),
                        rooms("2", "1", "2", Color(0xff0F2F44).withOpacity(0.5),10,10,4,218.28)
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        )
      ],
    ),
  );
}