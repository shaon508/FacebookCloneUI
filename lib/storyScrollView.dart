import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryScrollView extends StatelessWidget {
  const StoryScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(addresses1[index]),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
                  Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(addresses2[index]), // Use the correct list name
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),

              ],
            ),
          );
        }),
      ),
    );
  }
}

List<String> addresses1 = [
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
];

List<String> addresses2 = [
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
  "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg",
];
