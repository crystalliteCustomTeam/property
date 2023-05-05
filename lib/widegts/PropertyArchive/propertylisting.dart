import 'package:flutter/material.dart';
import '../../screens/propertydetail/propertydetail.dart';
import '../propertydetails/roomsinformation.dart';



class PropertyListingArchive extends StatelessWidget {
  PropertyListingArchive({Key? key}) : super(key: key);


  @override
  final properties = {
    {'id', 1},
    {"id", 2},
    {"id", 3},
    {"id", 4}
  };

  Widget setProperties(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (dynamic prop in properties)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  PropertyDetails()),
                );
              },
              child: Container(

                margin: EdgeInsets.only(right: 10.0),
                width: MediaQuery.of(context).size.width * 0.81,
                height: 350,
                decoration: BoxDecoration(
                    color: Color(0xff0E3146),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      height: 230,
                      width: 500,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/home-1.png'),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 25),
                      width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            prop.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          Text(
                            "520 N Btoudry Ave Los Angeles",
                            style: TextStyle(
                                color: Color(0xffFFFFFF).withOpacity(0.5),
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          rooms('15', '2', '1', Color(0xffFFFFFF)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Best For you",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),
          setProperties(context)
        ],
      ),
    );
  }
}
