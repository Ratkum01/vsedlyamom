import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mom_and_kids_app/styles/app_colors.dart';

import '../../navigation_drawe_page.dart';
import 'componets/category_card.dart';
import 'componets/hotel_detail.dart';
import 'componets/recomended_card.dart';


class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  NavigationDrawer(),
      backgroundColor: AppColors.fonColors,
      appBar: AppBar(
        backgroundColor: AppColors.osnovColors,
        elevation: 0.0,
        // leading: Icon(
        //   Icons.location_on_outlined,
        //   color: AppColors.fonColors,
        // ),
        title: Text(
          " ", 
        ), centerTitle: true,
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 10.0),
        //     child: CircleAvatar(
        //       // backgroundImage: AssetImage("assets/images/user.jpeg"),
        //     ),
        //   ),
        // ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Orders',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications),
      //       label: 'notifications',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'profile',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.teal[400],
      //   onTap: _onItemTapped,
      // ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          // right: 10.0,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //top text
            SizedBox(
              height: 10,
            ),
            Text(
              "Клиники",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            //search bar
            SizedBox(
              height: 15.0,
            ),
            Container(
              width: 300.0,
              height: 50.0,
              margin: EdgeInsets.only(left: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Поиск',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            //scralling list 1
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 30.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Category("Рядом"),
                  Category("Популярный"),
              
                  Category("Рейтинг"),
                  Category("С сайтом"),
                  Category("По картам"),
                  Category("Круглосуточно"),
                ],
              ),
            ),

            //scrolling containers 2
            SizedBox(
              height: 25,
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  HotelContainer("Садыхан", "Гоголя 54", "hotel2.jpeg"),
                  HotelContainer("ALDIMED", "Нуркена 12", "aldi.jpg"),
                  HotelContainer("BIOSFERA", "Республики 14", "bios.jpg"),
                  HotelContainer("SO-FARMA", "Универстетская 4", "sofarm.jpg"),
                  HotelContainer("IDEAL", "Лободы 45", "швуфд.jpg"),
                ],
              ),
            ),
            //text
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Рекомендации",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Показать больше",
                    style: TextStyle(color: Colors.red[300]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            //recomended hotels listview
            Expanded(
              child: ListView(
                children: [
                  RecomendeHotelCard(
                      "ALDIMED ", "Нуркена 12", "", "4.2", "aldi.jpg"),
                  RecomendeHotelCard(
                      "Садыхан", "Гоголя 54", "", "5.0", "hotel2.jpeg"),
                  RecomendeHotelCard(
                      "BIOSFERA", "Kwale", "", "4.5", "bios.jpg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
