import 'package:estate/screens/propertydetail/propertydetail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const padding = 24.0;
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(padding),
          child: PropertyDetails(),
        ),
      )
    );
  }
}
