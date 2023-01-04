import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/theme_style.dart';

class Prograph_Headr_Ponint extends StatelessWidget {
  String TypeText;
  final value;
  Prograph_Headr_Ponint({required this.TypeText, required this.value});
  @override
  Widget build(BuildContext context) {
    if (TypeText.contains("Header"))
      return Headr(dataHeadrt: value);
    else if (TypeText.contains("Prograph"))
      return Prograph(dataPrograph: value);
    else if (TypeText.contains("Points"))
      return Points(dataPonint: value);
    else
      return SizedBox();
  }
}

class Prograph extends StatelessWidget {
  String dataPrograph;
  Prograph({required this.dataPrograph});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      width: Get.width,
      child: Text(
        dataPrograph,
        textAlign: TextAlign.justify,
        strutStyle: StrutStyle(
          fontSize: 16,
        ),
        style: TextStyle(
          fontSize: 14,
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Headr extends StatelessWidget {
  String dataHeadrt;
  Headr({required this.dataHeadrt});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      width: Get.width,
      color: KScaceenColor,
      child: Text(
        dataHeadrt,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Points extends StatelessWidget {
  List<String> dataPonint;
  Points({required this.dataPonint});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          ...List.generate(
              dataPonint.length,
              (index) => Container(
                  margin: EdgeInsets.only(bottom: 0, left: 20, right: 20),
                  width: Get.width,
                  child: Text.rich(
                    TextSpan(
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: ". ",
                            style: TextStyle(
                              fontSize: 40,
                              color: KScaceenColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: dataPonint[index],
                          ),
                        ]),
                    textAlign: TextAlign.start,
                  )))
        ],
      ),
    );
  }
}
