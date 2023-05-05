import 'package:estate/widegts/propertydetails/agent.dart';
import 'package:estate/widegts/propertydetails/pricetobuy.dart';
import 'package:estate/widegts/propertydetails/propertyimagesection.dart';
import 'package:estate/widegts/propertydetails/propertynamebookmark.dart';
import 'package:estate/widegts/propertydetails/roomsinformation.dart';
import 'package:estate/widegts/propertydetails/topstaticdetails.dart';
import 'package:estate/widegts/propertydetails/description.dart';
import 'package:flutter/material.dart';

import '../../widegts/propertydetails/gallery.dart';

class PropertyDetails extends StatelessWidget {
  const PropertyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = 25.0;
    return Scaffold(

      body: SingleChildScrollView(
        padding: EdgeInsets.all(padding),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              topStaticDetails(context),
              const SizedBox(
                height: 20,
              ),
              imagesection('assets/images/home-1.png'),
              const SizedBox(
                height: 20,
              ),
              propertynamebookmark(
                  context, "RAFTAR HOUSE", "520 N Beaudry Ave, Los Angeles"),
              const SizedBox(
                height: 5,
              ),
              rooms('15', '2', '1',Color(0xff000000)),
              const SizedBox(
                height: 20,
              ),
              agent(context,'Rose Matrin',"Property Deals Co Owner","0316240202","assets/images/agentwomen.jpg"),
              const SizedBox(
                height: 20,
              ),
              description("Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read More"),
              const SizedBox(
                height: 20,
              ),
              SetGallery(),
              const SizedBox(
                height: 10,
              ),
              pricetobuy(context,199600,"RS.")
            ],
          ),
        ),
      ),
    );
  }
}
