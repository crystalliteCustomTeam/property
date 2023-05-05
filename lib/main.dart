import 'package:estate/screens/loginemail/loginemail.dart';
import 'package:estate/screens/loginsections/loginsection.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const padding = 25.0;
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Mulish'
      ),
      title: 'Flutter Demo',
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(padding),
          child: LoginSections(),
        ),
      )
    );
  }
}
