import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:mom_and_kids_app/calendar/calendar_model.dart';
import 'package:provider/provider.dart';
import 'calendar.dart';

class Calendar_Page extends StatefulWidget {
  const Calendar_Page({super.key});

  @override
  State<Calendar_Page> createState() => _Calendar_PageState();
}

class _Calendar_PageState extends State<Calendar_Page> {
  TextEditingController _depart = TextEditingController();
  TextEditingController _return = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // _depart.text = DateFormat.yMd()
    //     .format(Provider.of<CalendarModel>(context, listen: true).firstDate);
    // _return.text = DateFormat.yMd()
    //     .format(Provider.of<CalendarModel>(context, listen: true).secondDate);
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalemdar'),
      ),
      body: Center(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 100),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: 'From'),
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: 'From'),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(
                        controller: _depart,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: 'From'),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Calendar();
                          }));
                        },
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: TextFormField(
                        controller: _return,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), labelText: 'From'),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Calendar();
                          }));
                        },
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  // Container(
                  //   width: double.infinity,
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.push(context,
                  //           MaterialPageRoute(builder: (context) {
                  //         return Calendar();
                  //       }
                  //       ));
                  //     },
                  //     child: Text('ALGA'),
                  //   ),
                  // )
                ],
              ))),
    );
  }
}
