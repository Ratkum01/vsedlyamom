import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../apteka/home_page.dart';
import '../../utils/constants/theme_style.dart';

class Startpage extends StatefulWidget {
  static const routeName = "/Startpage";

  @override
  State<Startpage> createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      // Get.offAllNamed(MyApp.routeName);
      Get.off(HomePage());
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant Startpage oldWidget) {
    // TODO: implement didUpdateWidget
    setState(() {});
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KScaceenColor,
      body: Container(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Column(
              children: [
                Container(
                  child: Text(
                    "pregnancy".toUpperCase(),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Text(
                    " "
                        .toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: Get.width * 0.65,
              height: Get.width * 0.65,
              child: Image.asset("assets/images/splash2.png"),
            ),
          ],
        ),
      ),
    );
  }
}
