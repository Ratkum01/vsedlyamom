import 'package:flutter/material.dart';

class RecomendeHotelCard extends StatelessWidget {
  String name;
  String location;
  String rating;
  String price;
  String imageURL;

  RecomendeHotelCard(
      this.name, this.location, this.price, this.rating, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(13.0),
              child: Image(
                height: 70.0,
                image: AssetImage("assets/images/$imageURL"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$name",
                    style:
                        TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.location_on),
                            Text("$location"),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text("$rating"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      Text(
                        " ",
                        style: TextStyle(
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(" ")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}
