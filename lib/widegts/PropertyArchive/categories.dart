import 'package:flutter/material.dart';

class PropertyCategories extends StatelessWidget {
  PropertyCategories({Key? key}) : super(key: key);
  @override
  final List Categories = [
    'House',
    'Apartment',
    'Flat',
    'Plot',
    'Banglow',
    'Penthouse'
  ];

  ContainerList(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(var lst in Categories)
            Container(
              decoration: BoxDecoration(
                color: Color(0xff0F2F44),
                borderRadius: BorderRadius.circular(8)
              ),
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.only(right: 20,left: 20,top: 10,bottom: 10),
              child: Text(lst,style: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),),
            )
        ],
      ),
    );
  }


  Widget build(BuildContext context) {
    return ContainerList();
  }
}
