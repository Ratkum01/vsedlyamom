import 'package:flutter/material.dart';

import '../widget/pragragh.dart';

class ShowData extends StatelessWidget {
  static const routeName = "/TitleSubjectPage";

  final Map<String, dynamic> dataTitleSubject;
  ShowData({required this.dataTitleSubject});
  List<String>? dataKeysTitle = [];
  @override
  Widget build(BuildContext context) {
    dataTitleSubject.forEach((String k, e) {
      dataKeysTitle!.add(k);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Anemia in Pregnancy'),
      ),
      body: Center(
        child: Container(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(
                    dataTitleSubject.length,
                    (index) => Prograph_Headr_Ponint(
                      TypeText: dataKeysTitle![index],
                      value: dataTitleSubject[dataKeysTitle![index]],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
