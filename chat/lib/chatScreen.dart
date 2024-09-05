import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled/storyDetels.dart';
import 'chatDedels.dart';
import 'models/chatModel.dart';
import 'models/storyModel.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          backgroundColor: Colors.black54,
          flexibleSpace: Container(
            margin: EdgeInsets.only(top: 40),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (int i = 0; i < Story.length; i++)
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => StoryDedels(Story[i]),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage("${Story[i].storyImg}"),
                            ),
                            Text(
                              "${Story[i].name}",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  for (int i = 0; i < ChatList.length; i++)
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (C) => ChatDedels(ChatList[i]),
                          ),
                        );
                      },
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage("${ChatList[i].profileImgPath}"),
                      ),
                      title: Text("${ChatList[i].name}",
                          style: TextStyle(fontSize: 30)),
                      subtitle: Text("${ChatList[i].textChat}",
                          style: TextStyle(fontSize: 25)),
                      trailing: Text("${ChatList[i].time}",
                          style: TextStyle(fontSize: 25)),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  final List<CumonentChat> ChatList = [
    CumonentChat(
      profileImgPath: 'assets/images/#.jpeg',
      name: 'mariam',
      textChat: 'hi..',
      time: '10:20',),
    CumonentChat(
      profileImgPath: 'assets/images/logy.jpeg',
      name: 'logy',
      textChat: 'miss',
      time: '6:00',),
    CumonentChat(
      profileImgPath: 'assets/images/sama.jpeg',
      name: 'sama',
      textChat: 'welcome',
      time: '12:10',),
    CumonentChat(
      profileImgPath: 'assets/images/#.jpeg',
      name: 'mariam',
      textChat: 'hi..',
      time: '10:20',),
    CumonentChat(
      profileImgPath: 'assets/images/logy.jpeg',
      name: 'logy',
      textChat: 'miss',
      time: '6:00',),
    CumonentChat(
      profileImgPath: 'assets/images/sama.jpeg',
      name: 'sama',
      textChat: 'welcome',
      time: '12:10',),
    CumonentChat(
      profileImgPath: 'assets/images/#.jpeg',
      name: 'mariam',
      textChat: 'hi..',
      time: '10:20',),
    CumonentChat(
      profileImgPath: 'assets/images/logy.jpeg',
      name: 'logy',
      textChat: 'miss',
      time: '6:00',),
    CumonentChat(
      profileImgPath: 'assets/images/sama.jpeg',
      name: 'sama',
      textChat: 'welcome',
      time: '12:10',),
  ];
  List<Storymoder> Story = [
    Storymoder(storyImg: "assets/images/#.jpeg", name: "mariam"),
    Storymoder(storyImg: "assets/images/sama.jpeg", name: "sama"),
    Storymoder(storyImg: "assets/images/logy.jpeg", name: "logy"),
    Storymoder(storyImg: "assets/images/#.jpeg", name: "mariam"),
    Storymoder(storyImg: "assets/images/sama.jpeg", name: "sama"),
    Storymoder(storyImg: "assets/images/logy.jpeg", name: "logy"),
    Storymoder(storyImg: "assets/images/#.jpeg", name: "mariam"),
    Storymoder(storyImg: "assets/images/sama.jpeg", name: "sama"),
    Storymoder(storyImg: "assets/images/logy.jpeg", name: "logy"),
    Storymoder(storyImg: "assets/images/#.jpeg", name: "mariam"),
    Storymoder(storyImg: "assets/images/sama.jpeg", name: "sama"),
    Storymoder(storyImg: "assets/images/logy.jpeg", name: "logy"),
  ];

}
