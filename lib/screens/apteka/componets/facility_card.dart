import 'package:flutter/material.dart';

class FacilityCard extends StatelessWidget {
  final Icon myicon;

  const FacilityCard(this.myicon);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey, width: 2.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(13),
      ),
      width: 50,
      child: Center(
        child: myicon,
      ),
    );
  }
}
