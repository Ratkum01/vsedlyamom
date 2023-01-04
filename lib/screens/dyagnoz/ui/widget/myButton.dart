import 'package:flutter/material.dart';

import '../../utils/constants/theme_style.dart';

//import 'package:yysmo/Theme.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      this.myFun,
      this.MyText,
      this.MyIcons,
      this.rodius = 20,
      this.heig = -1,
      this.myColors = KScaceenColor})
      : super(key: key);
  final VoidCallback? myFun;
  final String? MyText;
  final Icon? MyIcons;
  final double? rodius;
  final Color? myColors;
  final double? heig;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.width * 3 / 100),
      height:
          (heig != -1) ? heig : MediaQuery.of(context).size.height * 8 / 100,
      width: MediaQuery.of(context).size.width * 90 / 100,
      child: ElevatedButton(
        onPressed: myFun,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              MyText!,
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: "Cairo"),
            ),
            (MyIcons != null) ? MyIcons! : SizedBox(),
          ],
        ),
        style: ElevatedButton.styleFrom(
          primary: myColors!,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(rodius!),
          ),

          //shadowColor: Colors.pink,
        ),
      ),
    );
  }
}
