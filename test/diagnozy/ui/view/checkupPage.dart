import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/model/treePregnacy.dart';
import '../../utils/constants/theme_style.dart';
import '../widget/myButton.dart';

class CheckUp extends StatefulWidget {
  static const routeName = "/CheckUp";
  @override
  State<CheckUp> createState() => _CheckUpState();
}

class _CheckUpState extends State<CheckUp> {
  TreePregnaacy _treePregnaacy = new TreePregnaacy();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Беременность'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width * 0.65,
              height: Get.width * 0.65,
              // child: Image.asset("assets/images/longe_scan2.png"),
            ),
            Container(
                child: ListView.separated(
              itemCount: _treePregnaacy.treeValue.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Container(
                child: Column(
                  children: [
                    CheckboxListTile(
                      title: Text(
                        _treePregnaacy.treeValue[index][1],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      secondary: Container(
                        // child: Image.asset(
                        //   "assets/images/splash2.png",
                        //   color: KScaceenColor,
                        // ),
                      ),

                      //  Icon(
                      //   Icons.double_arrow_outlined,
                      //   color: KScaceenColor,
                      // ),
                      subtitle: Text(_treePregnaacy.treeValue[index][5]),
                      activeColor: KScaceenColor,
                      value: _treePregnaacy.treeValue[index][4],
                      onChanged: (value) => setState(() {
                        _treePregnaacy.treeValue[index][4] = value;
                        print(_treePregnaacy.treeValue[index][4]);
                      }),
                    )
                  ],
                ),
              ),
              separatorBuilder: (BuildContext context, int index) => Divider(
                color: KScaceenColor,
                indent: Get.width *
                    (_treePregnaacy.treeValue.length - index) *
                    10 /
                    100,
              ),
            )),
            MyButton(
              MyText: "Проверить",
              MyIcons: Icon(Icons.near_me),
              myFun: () => Get.defaultDialog(
                  title: "",
                  // titleStyle: ,
                  middleText: "Результат".toUpperCase(),
                  middleTextStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: KScaceenColor,
                    fontSize: 20,
                  ),
                  actions: [
                    Container(
                      // child: Image.asset(
                      //   "assets/images/splash2.png",
                      //   color: KScaceenColor,
                      // ),
                    ),
                    Text(
                      "${ShowTheRusult()}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                  cancel: MyButton(
                    MyText: "OK",
                    myFun: () => Get.back(),
                    myColors: KScaceenColor,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  String ShowTheRusult() {
    // ignore: unused_local_variable

    return (_treePregnaacy.Diagnosis(
      valueDiagnosis: {
        _treePregnaacy.treeValue[0][0]: _treePregnaacy.treeValue[0][4],
        _treePregnaacy.treeValue[1][0]: _treePregnaacy.treeValue[1][4],
        _treePregnaacy.treeValue[2][0]: _treePregnaacy.treeValue[2][4],
        _treePregnaacy.treeValue[3][0]: _treePregnaacy.treeValue[3][4],
        _treePregnaacy.treeValue[4][0]: _treePregnaacy.treeValue[4][4],
        _treePregnaacy.treeValue[5][0]: _treePregnaacy.treeValue[5][4],
        _treePregnaacy.treeValue[6][0]: _treePregnaacy.treeValue[6][4],
        _treePregnaacy.treeValue[7][0]: _treePregnaacy.treeValue[7][4],
        _treePregnaacy.treeValue[8][0]: _treePregnaacy.treeValue[8][4],
      },
      indexvalueDiagnosis: _treePregnaacy.treeValue[0][0],
    ));
  }
}
