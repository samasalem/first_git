import 'package:flutter/material.dart';

import 'models/storyModel.dart';

class StoryDedels extends StatelessWidget {
  Storymoder story ;

  StoryDedels(this.story);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${story.name}",style: TextStyle(fontSize:30)),
        backgroundColor: Colors.black12,

      ),
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("${story.storyImg}",
                ),
              ],
            ),
          )),
    );
  }
}
