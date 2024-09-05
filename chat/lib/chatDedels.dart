import 'package:flutter/material.dart';

import 'models/chatModel.dart';

class ChatDedels extends StatelessWidget {
  CumonentChat data ;

  ChatDedels(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage("${data.profileImgPath}"),
        ),
        title: Text("${data.name}",style: TextStyle(fontSize:30)),
        backgroundColor: Colors.black12,

      ),
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("${data.textChat}",style: TextStyle(fontSize:30)),
                Text("${data.time}",style: TextStyle(fontSize:25)),
              ],
            ),
          )),
    );
  }
}
