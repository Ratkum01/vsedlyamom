import 'package:flutter/material.dart';

import 'componets/facility_card.dart';

class HotelDetailsPage extends StatelessWidget {
  String name;
  String location;
  String imgURL;

  HotelDetailsPage(this.name, this.location, this.imgURL);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/$imgURL"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //row 1
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$name",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w800),
                      ),
                      Row(
                        children: [
                          Text(
                            " ",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Text("")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //row 2
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("$location"),
                        ],
                      ),
                      Row(
                        children: [
                          star(),
                          star(),
                          star(),
                          star(),
                          star(),
                          Text("4.9"),
                        ],
                      )
                    ],
                  ),
                ),
                //row 3
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Описание",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Показать",
                        style: TextStyle(color: Colors.blue[500]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //text
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                      "$name группа компаний, начавшая свою работу в 1996 году. В арсенале 6 предприятий со штатом около 350 человек. Теперь для доступа к продукции не нужно ее искать – качественные лекарственные препараты от производителя предоставляет собственная интернет аптека в Алматы, Таразе и Шымкенте бренда. Весь ассортимент доступен быстро и недорого. Осуществляется курьерская доставка."),
                ),

                SizedBox(
                  height: 15,
                ),
                //text facilites
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    " ",
                    textAlign: TextAlign.start,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                //listview
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    // color: Colors.black,
                    height: 45,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                      ],
                    ),
                  ),
                ),
                //button
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: const Text("RESERVATION INFO"),
                          content: const Text(
                              "your reservation will be processed shortly"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                              child: Container(
                                // color: Colors.green,
                                padding: const EdgeInsets.all(14),
                                child: const Text("okay"),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text("Звонок"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget star() {
  return Row(
    children: [
      Icon(
        Icons.star,
        color: Colors.yellow[800],
      ),
      SizedBox(
        width: 3,
      ),
    ],
  );
}
