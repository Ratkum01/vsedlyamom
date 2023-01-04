import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mom_and_kids_app/calendar/calendar.dart';
import 'package:mom_and_kids_app/calendar/calendar_page.dart';
import 'package:mom_and_kids_app/screens/apteka/home_page.dart';
import 'package:mom_and_kids_app/screens/article/article_screen.dart';
import 'package:mom_and_kids_app/screens/community/forum_screen.dart';
import 'package:mom_and_kids_app/screens/consultation/consultation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mom_and_kids_app/styles/app_colors.dart';
// import 'package:mom_and_kids_app/screens/shop/screens/home/home_screen.dart';
import 'navigation_drawe_page.dart';
import 'screens/home/home_screen.dart';
import 'screens/shop/screens/home/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "mom and kids",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor:AppColors.fonColors,
        ),
        home: Screens());
  }
}

class Screens extends StatefulWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
   
    Home(),
  
    Article(),
    
    HomePage(),
    HomeScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: IndexedStack(index: _selectedIndex, children: _widgetOptions),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.fonColors,
        type: BottomNavigationBarType.fixed,
        // ignore: prefer_const_literals_to_create_immutables
        items: <BottomNavigationBarItem>[
          
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 30,),
            label: 'Главный',
            activeIcon: Icon(Icons.home_sharp,size: 30,
              color: AppColors.osnovColors,
            ),
          ),
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            // ignore: prefer_const_constructors
            icon: Icon(Icons.newspaper_rounded, size: 30,),
            label: 'Статьи',
            activeIcon: Icon(Icons.newspaper_rounded, size: 30,
              color: AppColors.osnovColors,
            ),
          ),
        
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital_outlined, size: 30,),
            label: 'Клиники',
            activeIcon: Icon(Icons.local_hospital, size: 30,
              color: AppColors.osnovColors,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store_outlined, size: 30,),
            label: 'Магазин',
            activeIcon: Icon(Icons.local_grocery_store, size: 30,
              color: AppColors.osnovColors,
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.fonColors,
        onTap: _onItemTapped,
        selectedLabelStyle:
            const TextStyle(fontFamily: "Avenir-Regular", fontSize: 10.0),
        unselectedLabelStyle:
            const TextStyle(fontFamily: "Avenir-Regular", fontSize: 10.0),
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
