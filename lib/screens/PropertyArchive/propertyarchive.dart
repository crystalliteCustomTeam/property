import 'package:estate/widegts/PropertyArchive/categories.dart';
import 'package:estate/widegts/PropertyArchive/propertylisting.dart';
import 'package:estate/widegts/PropertyArchive/staticcontent.dart';
import 'package:estate/widegts/PropertyArchive/topaddressprofileimage.dart';
import 'package:flutter/material.dart';

class PropertyArchive extends StatelessWidget {
  const PropertyArchive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        topsection("Karachi", "SINDH", 'assets/images/agentwomen.jpg'),
        const SizedBox(
          height: 20,
        ),
        staticContent(),
        const SizedBox(
          height: 20,
        ),
        PropertyCategories(),
        const SizedBox(
          height: 20,
        ),
        PropertyListingArchive()
      ],
    );
  }
}
