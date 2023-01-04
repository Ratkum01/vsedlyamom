import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mom_and_kids_app/screens/dyagnoz/ui/view/checkupPage.dart';
import 'package:mom_and_kids_app/screens/dyagnoz/ui/view/titledata.dart';


import '../../core/model/treePregnacy.dart';
import '../../core/services/data.dart';
import '../../utils/constants/theme_style.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/HomePage";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TreePregnaacy _treePregnaacy = new TreePregnaacy();
  Color primeryColor = KScaceenColor;
  Color ScanedColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ScanedColor,
        appBar: AppBar(
          actions: <Widget>[
          IconButton(
            icon:  Icon(
              Icons.celebration_sharp,
              color: primeryColor,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              setState(() {
                Color Temp = primeryColor;
                primeryColor = ScanedColor;
                ScanedColor = Temp;
              });
            },
          ),],
          backgroundColor: ScanedColor,
          shadowColor: ScanedColor,
          // leading: InkWell(
          //   onTap: () {
          //     setState(() {
          //       Color Temp = primeryColor;
          //       primeryColor = ScanedColor;
          //       ScanedColor = Temp;
          //     });
          //   },
            // child: Icon(
            //   Icons.celebration_sharp,
            //   color: primeryColor,
            // ),
          // ),
          elevation: 0.0,
        ),
        body: Container(
          alignment: Alignment.centerLeft,
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: Get.width,
                  alignment: Alignment.bottomRight,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "pregnancy".toUpperCase(),
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  color: primeryColor,
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
                                  fontSize: 10,
                                  color: primeryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/images/splash2.png",
                        color: primeryColor,
                        height: Get.width * 0.4,
                        width: Get.width * 0.4,
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Container(
                  width: Get.width * 0.9,
                  child: ListView.builder(
                    itemCount: myData.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () => Get.to((index > 0)
                            ? TitleSubject(
                                dataTitleSubject: myData[index]!["body"],
                                titlePage: myData[index]!["title"],
                              )
                            : CheckUp()),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          // width: Get.width * 0.7,
                          height: 50,
                          decoration: BoxDecoration(
                            color: primeryColor,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              VerticalDivider(
                                color: ScanedColor,
                                width: 10,
                                thickness: 2,
                              ),
                              Expanded(
                                child: Text(
                                  myData[index]!["title"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      //    fontSize: 14,
                                      color: ScanedColor),
                                ),
                              ),
                              Icon(
                                Icons.near_me,
                                color: ScanedColor,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                /*  GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (BuildContext context, int index) => MyButton(
                    MyText: "CHECK UP",
                    MyIcons: Icon(Icons.near_me),
                    myFun: () {},
                  ),
                ),
             */
              ],
            ),
          ),
        ));
  }
}
