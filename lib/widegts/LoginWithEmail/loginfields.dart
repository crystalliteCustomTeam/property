import 'package:flutter/material.dart';

loginfields(context, dynamic iconname, String placeholder,
    [bool obsureStatus = false, dynamic passwordicon = null]) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.85,
    height: 60,
    padding: EdgeInsets.only(left: 20, right: 10),
    decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        Icon(iconname, size: 30),
        Expanded(
          child: TextField(
            obscureText: obsureStatus,
            decoration: InputDecoration(
              hintStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              hintText: placeholder,
              border: const OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
        Icon(passwordicon, size: 30),
      ],
    ),
  );
}
