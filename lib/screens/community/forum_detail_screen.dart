import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForumDetail extends StatefulWidget {
  final String title;
  const ForumDetail({Key? key, required this.title}) : super(key: key);

  @override
  State<ForumDetail> createState() => _ForumDetailState();
}

class _ForumDetailState extends State<ForumDetail> {
  int currentListSize = 0;
  int listSizePerShow = 4;

  List<String> originalItems = ["Обучение", "Еда для детей", "Развивашка", "Уход", "Лечение", "Стресс", "Обучение", "Еда для детей", "Развивашка", "Уход", "Лечение", "Стресс", "Обучение", "Еда для детей", "Развивашка", "Уход", "Лечение", "Стресс"];
  List<String> items = <String>[];

  List<Map<String, dynamic>> questions =
  [
    {
      "username": "Айдана",
      "question": "Ребенок заболел,температуры есть 37 градусов,все время плачет что делать?",
      "picture": "",
    },
    {
      "username": "Дина",
      "question": "Попытайтесть успокоить ребенка?",
      "picture": "question_image.png",
    },
    {
      "username": "Врач Алия",
      "question": "Вызовите скорую",
      "picture": "cook.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFFCFCFC),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF7FAF9),
        appBar: AppBar(
          leading: BackButton(
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
          ),
          surfaceTintColor: Colors.white,
          elevation: 1,
          title: Text(widget.title,
            style: const TextStyle(fontFamily: "Avenir-Regular", fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF336A63).withOpacity(0.10),
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: const Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        constraints: const BoxConstraints(
                          minHeight: 35.0,
                        ),
                        child: const TextField(
                          maxLines: 2,
                          style: TextStyle(
                            fontFamily: "Avenir-Regular",
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Что случилось?",
                            hintStyle: TextStyle(
                                color: Color(0xFF808080),
                                fontSize: 15,
                                fontFamily: "Avenir-Regular"
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 8.0,),

                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/image_icon.svg"),

                          const Spacer(),

                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [Color(0xff4d918f), Color(0xff8ec3b3)],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        )
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    minimumSize: Size.zero,
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 2.5),
                                    textStyle: const TextStyle(fontSize: 16, fontFamily: "Avenir-Regular"),
                                  ),
                                  onPressed: () {},
                                  child: const Text('Добавить'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 33.0,),

                Row(
                  children: [
                    SvgPicture.asset("assets/icons/sort_icon.svg"),

                    const SizedBox(width: 4.0,),

                    Text("Новые",
                      style: const TextStyle(fontFamily: "Avenir-Regular", fontSize: 12, color: Colors.black),
                    ),

                  ],
                ),

                const SizedBox(height: 18.0,),

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
                            color: const Color(0xFF336A63).withOpacity(0.15),
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
                                              style: const TextStyle(
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
      ),
    );
  }
}