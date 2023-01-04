import 'package:flutter/material.dart';


import '../hotel_detail_page.dart';

class HotelContainer extends StatelessWidget {
  String name;
  String location;
  String imageurl;

  HotelContainer(this.name, this.location, this.imageurl);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HotelDetailsPage(name, location, imageurl),
          ),
        );
        // print("$name");
      },
      child: Row(
        children: [
          Container(
            height: 300,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    height: 100,
                    width: 140,
                    // image: AssetImage("/assets/images/hotel1.jpeg"),
                    image: AssetImage("assets/images/$imageurl"),
                  ),
                ),
                //text1
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "$name",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                //text 2
                Row(
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("$location"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 35.0,
          )
        ],
      ),
    );
  }
}
