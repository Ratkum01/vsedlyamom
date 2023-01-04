
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mom_and_kids_app/screens/community/forum_screen.dart';
import 'package:mom_and_kids_app/screens/consultation/consultation_screen.dart';
import 'package:mom_and_kids_app/screens/dyagnoz/ui/view/home.dart';
import 'package:mom_and_kids_app/styles/app_colors.dart';

import 'calendar/calendar_page.dart';


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // final user = UserPreferences.myUser;
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: AppColors.osnovColors,
            padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
            child: Column(
              children: [
                // ProfileWidget(
                //   imagePath: 
                //   onClicked: () async {
                //     Navigator.of(context).push(
                //       MaterialPageRoute(builder: (context) => Profile_aul()),
                //     );
                //   },
                // ),
                // buildName(user),
              ],
            ),
          ),
          // buildHeader(context),
          buildMenuItems(context),
        ],
      )),
    );
  }
}

// Widget buildHeader(BuildContext context) => Container(
//       color: Color.fromARGB(255, 208, 95, 2),
//       padding: EdgeInsets.only(
//         top: MediaQuery.of(context).padding.top,
//       ),
//       child: Column(
//         children: [buildName(use)],
//       ),
//     );

Widget buildMenuItems(BuildContext context) => Container(
      padding: const EdgeInsets.all(14),
      child: Wrap(
        // для интервала по вертикали

        runSpacing: 3,
        children: [
          

         
          ListTile(
            leading: const Icon(Icons.people_alt),
            title: const Text('Врачи'),
           onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Consultation();
              }
              ));
           }
          ),
const Divider(
            height: 6,
            color: Colors.black54,
          ), ///ДЕЛИТЕЛЬ

          ListTile(
              leading: const Icon(Icons.question_answer),
              title: const Text('Форум'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Forum();
              }
              ));
              }),
         const Divider(
            height: 6,
            color: Colors.black54,
          ),
          

          ListTile(
              leading: const Icon(Icons.medication_liquid_rounded),
              title: const Text('FAST Диагностика'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }
              ));
              }),
              ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text('Календарь'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Calendar_Page();
              }
              ));
            },
          ),
//           const Divider(
//             height: 6,
//             color: Colors.black54,
//           ),
//           ListTile(
//               leading: const Icon(Icons.exit_to_app_rounded),
//               title: const Text(
//                 'GLAVKA',
//                 style: TextStyle(color: Colors.red),
//               ),
//               iconColor: Colors.red,
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                 return Glavka();
//               }
//               ));
//               }),

//           ListTile(
//               leading: const Icon(Icons.exit_to_app_rounded),
//               title: const Text(
//                 'Выйти',
//                 style: TextStyle(color: Colors.red),
//               ),
//               iconColor: Colors.red,
//               onTap: (() {
//                 FirebaseAuth.instance.signOut();
//               })),
        ],
      ),
    );
Widget buildName(user) => Column(
      children: [
        Text(
          user.name,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
        Text(
          user.email,
          style: TextStyle(color: Color.fromARGB(255, 200, 200, 200)),
        )
      ],
    );
