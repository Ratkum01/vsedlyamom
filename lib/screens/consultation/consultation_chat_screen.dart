import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ConsultationChat extends StatefulWidget {
  final String receiverName;
  final String receiverProfession;
  final String receiverImage;
  const ConsultationChat({
    Key? key,
    required this.receiverName,
    required this.receiverProfession,
    required this.receiverImage,
  }) : super(key: key);

  @override
  State<ConsultationChat> createState() => _ConsultationChatState();
}

class _ConsultationChatState extends State<ConsultationChat> {
  List<Map<String, dynamic>> chatMessages =
  [
    {
      "messageText": "Hi, I'm the doctor",
      "isSender": false,
      "dateSent": "2022-05-31"
    },
    {
      "messageText": "What would you like me to call you?",
      "isSender": false,
      "dateSent": "2022-05-31"
    },
    {
      "messageText": "Hi doctor, im Aninda",
      "isSender": true,
      "dateSent": "2022-05-31"
    },
    {
      "messageText": "Nice to meet you Aninda. What can i help you?",
      "isSender": false,
      "dateSent": "2022-05-31"
    },
    {
      "messageText": "I need a meal plan for my child",
      "isSender": true,
      "dateSent": "2022-05-31"
    },
    {
      "messageText": "Is it for Elrumi?",
      "isSender": false,
      "dateSent": "2022-05-31"
    },
    {
      "messageText": "Yes, it is for him",
      "isSender": true,
      "dateSent": "2022-06-01"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7FAF9),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          title: Column(
            children: [
              Text(widget.receiverName,
                style: const TextStyle(
                  fontFamily: "Avenir-Regular", fontSize: 20,
                ),
              ),
              Text(widget.receiverProfession,
                style: const TextStyle(
                  fontFamily: "Avenir-Regular", fontSize: 14, color: Color(0xFF878787),
                ),
              )
            ],
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/${widget.receiverImage}.png"),
              ),
            )
          ],
        ),

        body: Container(
          // padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
          child: Column(
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(top: 14.0),
              //   child: Text("May 31st",
              //     style: TextStyle(
              //       fontSize: 12, fontFamily: "Avenir-Regular", color: Color(0xFFA5A5A5)
              //     ),
              //   ),
              // ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  itemCount: chatMessages.length,
                  itemBuilder: (context, index) {
                    var date = chatMessages[index]['dateSent'];
                    var day = date.substring(8, 10);
                    var month = DateFormat('MMMM').format(DateTime(0, int.parse(date.substring(5, 7))));
                    return Column(
                      children: [
                        index == 0 || date != chatMessages[index - 1]['dateSent'] ? Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: Text("$month, $day",
                            style: TextStyle(
                                fontSize: 12, fontFamily: "Avenir-Regular", color: Color(0xFFA5A5A5)
                            ),
                          ),
                        ) : const SizedBox(),
                        Row(
                          mainAxisAlignment: chatMessages[index]['isSender'] ? MainAxisAlignment.end : MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12.0),
                              margin: EdgeInsets.only(
                                top: index == 0 ? 10 :
                                      chatMessages[index]['isSender'] != chatMessages[index - 1]['isSender'] ?
                                      20 : 10
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                gradient: LinearGradient(
                                  colors: chatMessages[index]['isSender'] ? [Color(0xff4d918f), Color(0xff8ec3b3)] : [Colors.white, Colors.white],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF336A63).withOpacity(0.10),
                                    spreadRadius: 0,
                                    blurRadius: 5,
                                    offset: const Offset(0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              constraints: const BoxConstraints(maxWidth: 250.0),
                              child: Text(chatMessages[index]['messageText'],
                                style: TextStyle(
                                  color: chatMessages[index]['isSender'] ? Colors.white : Colors.black,
                                  fontFamily: "Avenir-Regular",
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  }
                ),
              ),

              Container(
                width: double.infinity,
                height: 64.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                decoration: const BoxDecoration(
                  color: Color(0xFFBDCCCB),
                ),
                child: SafeArea(
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          style: const TextStyle(
                            fontFamily: 'Avenir-Regular',
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Ketik di sini",
                            hintStyle: const TextStyle(
                                color: Color(0xFF808080),
                                fontSize: 14,
                                fontFamily: "Avenir-Regular"
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),

                      const SizedBox(width: 18.0,),

                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: const Color(0xFF4D918F)
                        ),
                        child: const Icon(Icons.send)
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChatMessage {
  final String messageText;
  final bool isSender;

  ChatMessage({
    required this.messageText,
    required this.isSender,
  });
}

class ChatBubble extends StatefulWidget {
  const ChatBubble({Key? key}) : super(key: key);

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

