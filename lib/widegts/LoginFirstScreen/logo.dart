import 'package:flutter/material.dart';

logosection(String logourl,[double logowidth=300,double logoheight=180]){
  return Image(
    image: AssetImage(logourl),
    width: logowidth,
    height: logoheight,
  );
}