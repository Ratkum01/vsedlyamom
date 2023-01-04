import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mom_and_kids_app/screens/diagnozy/ui/view/showdata.dart';
import '../../core/model/treePregnacy.dart';
import '../../core/services/data.dart';
import '../../utils/constants/theme_style.dart';

class TitleSubject extends StatelessWidget {
  static const routeName = "/TitleSubjectPage";
  TreePregnaacy _treePregnaacy = new TreePregnaacy();
  List<String> dataTitleSubject;
  String titlePage;
  TitleSubject({required this.dataTitleSubject, required this.titlePage});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          //  backgroundColor: Colors.white,
          title: Text('Pregnancy'),

          shadowColor: Colors.white,

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
                                titlePage.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: KScaceenColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Image.asset(
                      //   "assets/images/splash2.png",
                      //   color: KScaceenColor,
                      //   height: Get.width * 0.4,
                      //   width: Get.width * 0.4,
                      // ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Container(
                  width: Get.width * 0.9,
                  child: ListView.builder(
                    itemCount: dataTitleSubject.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () => Get.to(ShowData(
                            dataTitleSubject:
                                bodyInfromation["Anemia in Pregnancy"])),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          // width: Get.width * 0.7,
                          height: 50,
                          decoration: BoxDecoration(
                            color: KScaceenColor,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              VerticalDivider(
                                color: Colors.white,
                                width: 10,
                                thickness: 2,
                              ),
                              Expanded(
                                child: Text(
                                  dataTitleSubject[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      //    fontSize: 14,
                                      color: Colors.white),
                                ),
                              ),
                              Icon(
                                Icons.near_me,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
