import 'package:flutter/material.dart';

class SetGallery extends StatelessWidget {
  SetGallery({Key? key}) : super(key: key);

  @override
  List images = [
    'assets/images/room1.png',
    'assets/images/room2.png',
    'assets/images/room1.png',
    'assets/images/room2.png',
    'assets/images/room1.png',
    'assets/images/room2.png',
    'assets/images/room1.png',
    'assets/images/room2.png',
  ];

  //  for in (require dart 2.2.2 SDK or later)
  Widget imagesContainer() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          for (var item in images)
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: AssetImage(item)
                )
              ),
            ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Gallery",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        imagesContainer()
      ],
    );
  }
}
