import 'dart:math';
import 'package:mom_and_kids_app/screens/community/forum_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../navigation_drawe_page.dart';
import '../../styles/app_colors.dart';

class Forum extends StatefulWidget {
  const Forum({Key? key}) : super(key: key);

  @override
  State<Forum> createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  int currentListSize = 0;
  int listSizePerShow = 4;

  List<String> originalItems = ["Обучение", "Еда для детей", "Развивашка", "Уход", "Лечение", "Стресс", "Обучение", "Еда для детей", "Развивашка", "Уход", "Лечение", "Стресс", "Обучение", "Еда для детей", "Развивашка", "Уход", "Лечение", "Стресс"];
  List<String> items = <String>[];

  List<Map<String, dynamic>> questions =
  [
    {
      "username": "Mom of Elrumi",
      "question": "How to decide a kindergarten for your kids, mom?",
      "picture": "",
    },
    {
      "username": "Mom of Joe",
      "question": "Is these stationeries enough for kindergarten preparation?",
      "picture": "question_image.png",
    },
    {
      "username": "Mom of Doe",
      "question": "When should I put my kids to school?",
      "picture": "education_forum.png",
    }
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      items.addAll(originalItems.getRange(currentListSize, currentListSize + listSizePerShow));
      currentListSize = currentListSize + listSizePerShow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const NavigationDrawer(),
      backgroundColor: AppColors.fonColors,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        elevation: 1,
        title: const Text("Forum",
          style: TextStyle(fontFamily: "Avenir-Regular", fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 24, left: 28, right: 28,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.osnovColors,
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    style: const TextStyle(
                      fontFamily: 'Avenir-Regular',
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Поиск",
                      hintStyle: const TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 15,
                          fontFamily: "Avenir-Regular"
                      ),
                      prefixIcon: const Icon(Icons.search, color: Color(0xFF808080),),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24,),

              const Text("Форум беременных мам",
                style: TextStyle(
                  fontFamily: "Avenir-Regular", fontSize: 16,
                ),
              ),

              const SizedBox(height: 16,),

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: (currentListSize <= originalItems.length) ? items.length + 1 : items.length,
                itemBuilder: (context, index) {
                  return (index == items.length) ?
                  TextButton(
                      onPressed: (){
                        setState(() {
                          if((currentListSize + listSizePerShow)> originalItems.length) {
                            items.addAll(
                                originalItems.getRange(currentListSize, originalItems.length));
                          } else {
                            items.addAll(
                                originalItems.getRange(currentListSize, currentListSize + listSizePerShow));
                          }
                          currentListSize = currentListSize + listSizePerShow;
                        });
                      },
                      child: const Text("Show all",
                        style: TextStyle(
                            fontFamily: "Avenir-Regular", fontSize: 12, color: Color(0xFF757575)
                        ),
                      )
                  )
                      :
                  Container(
                    margin: index == items.length - 1 ? const EdgeInsets.only(bottom: 0.0) : const EdgeInsets.only(bottom: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.osnovColors,
                          spreadRadius: 0,
                          blurRadius: 12,
                          offset: const Offset(0, 4), // changes position of shadow
                        ),
                      ],
                      color: Colors.white
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(8),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForumDetail(title: originalItems[index]),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(items[index],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontFamily: "Avenir-Regular", fontSize: 16,
                                      ),
                                    ),

                                    const SizedBox(height: 11.0,),

                                    Text("77 People",
                                      style: TextStyle(
                                        fontFamily: "Avenir-Regular", fontSize: 12, color: Color(0xFF949494),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // Spacer(),

                            Container(
                              width: 153.0,
                              height: 72,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(4), bottomRight: Radius.circular(4)),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/education_forum.png"),
                                    fit: BoxFit.cover
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),

              const SizedBox(height: 13,),

              const Text("Asked Questions",
                style: TextStyle(
                  fontFamily: "Avenir-Regular", fontSize: 16,
                ),
              ),

              const SizedBox(height: 22,),

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  Random random = Random();
                  var randomIndex = random.nextInt(questions.length);

                  return Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.osnovColors,
                          spreadRadius: 0,
                          blurRadius: 5,
                          offset: const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Card(
                      elevation: 0,
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.5),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                                    child: Row(
                                      children: [
                                        Container(
                                          constraints: const BoxConstraints(maxWidth: 220),
                                          child: Text("${questions[randomIndex]['username']}".replaceAll("", "\u{200B}"), overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontFamily: "Avenir-Regular", fontSize: 14.0, fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),

                                        const SizedBox(width: 4.0,),

                                        Text("2y 11m",
                                          style: TextStyle(
                                            fontFamily: "Avenir-Regular", fontSize: 12.0, color: Color(0xFF979797),
                                          ),
                                        ),

                                        const Spacer(),

                                        const Icon(Icons.more_vert, color: Color(0xFF536471),),
                                      ],
                                    ),
                                  ),

                                  const SizedBox(height: 4.0,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                                    child: Text("${questions[randomIndex]['question']}",
                                      style: const TextStyle(
                                        fontFamily: "Avenir-Regular", fontSize: 14.0,
                                      ),
                                    ),
                                  ),

                                  questions[randomIndex]['picture'] != ""?
                                  Container(
                                    height: 100.0,
                                    margin: const EdgeInsets.only(bottom: 7.0, top: 4.0),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/${questions[randomIndex]['picture']}"),
                                          fit: BoxFit.cover
                                      ),
                                    ),
                                  ) : Container(),

                                  const SizedBox(height: 7.0,),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0,),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset("assets/icons/comment_icon.svg"),
                                        const SizedBox(width: 8.0,),
                                        Text("32",
                                            style: TextStyle(
                                              fontFamily: "Avenir-Regular", fontSize: 12.0, color: Color(0xFF536471),
                                            )
                                        ),
                                        const Spacer(),
                                        SvgPicture.asset("assets/icons/bookmark_icon.svg"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}