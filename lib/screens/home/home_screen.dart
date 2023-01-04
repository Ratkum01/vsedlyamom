import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mom_and_kids_app/styles/app_colors.dart';

import '../../navigation_drawe_page.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<String> activities = ["Упражнения для беременных", "Пейте больше воды", "Ешьте больше белка"];
  List<int> quantity = [30, 2, 40];
  List<String> icon = ["exercise", "water", "exercise"];
  List<String> frequency = ["мин/в день", "л/в день", "гр/ в день"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("Главный"), centerTitle: true,backgroundColor: AppColors.osnovColors,),
drawer: const NavigationDrawer(),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: <Widget>[
            Stack(
              // alignment: const Alignment(0, 15),
              children: <Widget>[
                Container(
                  height: 233,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width,
                            120.0),
                      ),
                      gradient:  LinearGradient(
                        colors: [AppColors.osnovColors, AppColors.osnovColors],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      )
                  ),
                ),
    
                Column(
                    children: const <Widget>[
                      SizedBox(height: 55,),
                      Center(
                        child: 
                        Text(
                          "Привет, Мама) ",
                          style: TextStyle(
                              fontFamily: "Avenir-Black",
                              fontSize: 26.0,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ]
                ),
    
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 96.0),
                      child: Container(
                        height: 219,
                        width: 219,
                        decoration: BoxDecoration(
                            color: AppColors.fonColors,
                            borderRadius: BorderRadius.circular(1000),
                            boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 15,
                              offset: const Offset(0, 4),
                            )]
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/home_ava.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ],
                ),
    
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 162.0 ),
                      alignment: const Alignment(-1.1, 0),
                      child: Container(
                        height: 58,
                        width: 58,
                        decoration: BoxDecoration(
                            color: AppColors.fonColors,
                            borderRadius: BorderRadius.circular(1000),
                            boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 15,
                              offset: const Offset(0, 4),
                            )]
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 9.24),
                          child: SvgPicture.asset(
                            "assets/images/home_ava.svg",
                            width: 1, height: 1,
                            // fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
    
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 162.0 ),
                      alignment: const Alignment(1.1, 0),
                      child: Container(
                        height: 58,
                        width: 58,
                        decoration: BoxDecoration(
                            color: AppColors.fonColors,
                            borderRadius: BorderRadius.circular(1000),
                            boxShadow: [BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 15,
                              offset: const Offset(0, 4),
                            )]
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 9.24),
                          child: SvgPicture.asset(
                            "assets/images/home_ava.svg",
                            width: 1, height: 1,
                            // fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    
            const SizedBox(height: 12,),
     
    
            const Text(
              "Первый триместр беременности",
              style: TextStyle(
                  fontFamily: "Avenir-Black",
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              ),
            ),
    
            const SizedBox(height: 8,),
    
            const SizedBox(
              width: 270,
              child: Text(
                "Младенцы в утробе матери испытывают формирование и уточнение органов",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Avenir-Regular",
                  fontSize: 12.0,
                ),
              ),
            ),
    
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Chip(
                  avatar: SvgPicture.asset("assets/icons/weight_icon.svg"),
                  label: RichText(
                    text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '9.5',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Avenir-Regular",
                              fontSize: 14.0,
                            ),
                          ),
                          TextSpan(
                            text: ' гр',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Avenir-Regular",
                              fontSize: 10.0,
                            ),
                          ),
                        ]
                    ),
                  ),
                  backgroundColor: const Color(0xFF79B3A8).withOpacity(0.15),
                ),
                const SizedBox(width: 8.0,),
                Chip(
                  avatar: SvgPicture.asset("assets/icons/length_icon.svg"),
                  label: RichText(
                    text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '30.2',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Avenir-Regular",
                              fontSize: 14.0,
                            ),
                          ),
                          TextSpan(
                            text: ' cm',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Avenir-Regular",
                              fontSize: 10.0,
                            ),
                          ),
                        ]
                    ),
                  ),
                  backgroundColor: const Color(0xFF79B3A8).withOpacity(0.15),
                ),
    
              ],
            ),
    
            const SizedBox(height: 29,),
    
            Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Цели на сегодня",
                      style: TextStyle(
                          fontFamily: "Avenir-Black",
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ]
            ),
    
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListView.builder(
                  padding: const EdgeInsets.only(top: 12.0),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: activities.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 80.0,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      margin: const EdgeInsets.only(bottom: 6),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF336A63).withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 12,
                              offset: const Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Card(
                          elevation: 0,
                          shadowColor: Colors.transparent,
                          child: ListTile(
                            contentPadding: const EdgeInsets.only(left: 0.0, top: 4.0),
                            leading:
                            SvgPicture.asset(
                              "assets/icons/${icon[index]}_icon.svg",
                              fit: BoxFit.fitWidth,
                            ),
                            title: Transform.translate(
                              offset: const Offset(-17.0, -3.0),
                              child: Text(
                                activities[index].toString(),
                                style: const TextStyle(
                                  fontFamily: "Avenir-Regular",
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            subtitle: Transform.translate(
                              offset: const Offset(-17.0, -5),
                              child: Text(
                                "${quantity[index]} ${frequency[index]}",
                                style: TextStyle(
                                    fontFamily: "Avenir-Regular",
                                    fontSize: 12.0,
                                    color: (icon[index].toString() == "упражнение") ? const Color(0xFFF5907B) : const Color(0xFF7BC9F5)
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}