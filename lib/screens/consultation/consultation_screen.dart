import 'package:flutter/material.dart';
import 'package:mom_and_kids_app/screens/consultation/consultation_chat_screen.dart';
import '../../components/searchbox/searchbox_component.dart';
import '../../navigation_drawe_page.dart';

class Consultation extends StatefulWidget {
  const Consultation({Key? key}) : super(key: key);

  @override
  State<Consultation> createState() => _ConsultationState();
}

class _ConsultationState extends State<Consultation> {
  List<String> doctors = ["Куанышкызы Аружан", "Аекина Сания", "Сундетова Саяна", "Сабакбай Асылжан", "Нуриден МУктар", "Dr. Rully Sendokir", "Dr. Risma Hanida", "Dr. Ira Juita", "Dr. Rully Sendokir"];
  List<String> images = ["doctor3", "doctor4", "doctor5", "doctor6", "doctor3", "doctor3", "doctor3", "doctor3", "doctor3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: const NavigationDrawer(),
      appBar: AppBar(title: Text('Врачи'),  ),
      
      body: Column(
        
        children: <Widget>[
          SearchBox(searchType: "consultation"),
          Expanded(
            child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 14, left: 16, right: 16),
                          width: double.infinity,
                          child: const Text(
                            "Рекомендуемые врачи",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: 'Avenir-Black',
                              fontSize: 16,
                            ),
                          ),
                        ),
    
                        ListView.builder(
                          padding: const EdgeInsets.only(top: 12.0),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: doctors.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: GestureDetector(
                                onTap: () {
    
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0xFF336A63).withOpacity(0.1),
                                        spreadRadius: 0,
                                        blurRadius: 8,
                                        offset: const Offset(0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  margin: const EdgeInsets.symmetric(horizontal: 16.0),
                                  // padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                  child: Card(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          width: 100,
                                          height: 122,
                                          decoration: BoxDecoration(
                                            // color: Colors.red,
                                            // border: Border.all(width: 0.5),
                                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(15.0)),
                                            image: DecorationImage(
                                                image: AssetImage("assets/images/${images[index]}.png"),
                                                fit: BoxFit.cover
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: const EdgeInsets.symmetric(horizontal: 18.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                const SizedBox(height: 16,),
                                                Text(doctors[index].replaceAll("", "\u{200B}"),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      fontSize: 16, fontFamily: "Avenir-Black"
                                                  ),
                                                ),
                                                Row(
                                                  children: const [
                                                    Icon(Icons.star, size: 16, color: Color(0xFFFFC107),),
                                                    Text('4.5 (93)',
                                                      style: TextStyle(
                                                          fontFamily: "Avenir-Regular",
                                                          fontSize: 11,
                                                          color: Color(0xFF808080)
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(100),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: const Color(0xFF336A63).withOpacity(0.1),
                                                        spreadRadius: 0,
                                                        blurRadius: 20,
                                                        offset: const Offset(0, 2), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  child: OutlinedButton(
                                                    onPressed: (){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) => ConsultationChat(receiverName: doctors[index], receiverProfession: "Nutritionist", receiverImage: images[index],)
                                                        ),
                                                      );
                                                    },
                                                    style: OutlinedButton.styleFrom(
                                                      backgroundColor: Colors.white,
                                                    ),
                                                    child: const Text('Консултация',
                                                      style: TextStyle(
                                                          fontSize: 12, fontFamily: 'Avenir-Regular', color: Color(0xFF5B9C97)
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 16,),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ]
                  ),
                ),
              )
          ),
        ]
      ),
    );
  }
}
