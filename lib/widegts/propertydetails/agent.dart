import 'package:flutter/material.dart';

agent(context,String agentName,String designation, String agentNumber,String agentimage){
  return  Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.55,
          child: Row(

            children: [
              CircleAvatar(
                backgroundImage:
                AssetImage(agentimage),
                radius: 28,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(agentName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      )),
                  Text(
                    designation,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.25,
          child: ElevatedButton(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5,),
                  Text("Call",style: TextStyle(
                      fontSize: 18
                  ),)
                ],
              ),
              onPressed: () {
                 final snackBar = SnackBar(
                  content: Text("You Called This Number : ${agentNumber}"),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);

              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff103144))),
        )
      ],
    ),
  );
}