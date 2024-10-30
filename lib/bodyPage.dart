import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2_app/bodyFirstPart.dart';
import 'package:test2_app/postPage.dart';
import 'package:test2_app/storyScrollView.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          //
          // First section
          //
          firstPartOfBody(),
          SizedBox(height: 1),
          //
          // Second section
          //
          StoryScrollView(),
          SizedBox(height: 1),
          //
          // Third section
          //
          PostPage(),
        ],
      ),
    );
  }
}
