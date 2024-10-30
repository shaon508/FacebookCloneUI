import 'package:flutter/material.dart';

final List<String> postImage = [
  "https://media.istockphoto.com/id/1081572304/photo/emotion-concept-the-man-raised-his-right-thumb-in-approval-the-expression-on-his-face-means.jpg?s=1024x1024&w=is&k=20&c=ZaCz0wVtMi189PShcgEni1rq2jnSWyxlpXvXyAoxntk=",
  "https://media.istockphoto.com/id/1081572304/photo/emotion-concept-the-man-raised-his-right-thumb-in-approval-the-expression-on-his-face-means.jpg?s=1024x1024&w=is&k=20&c=ZaCz0wVtMi189PShcgEni1rq2jnSWyxlpXvXyAoxntk=",
  "https://media.istockphoto.com/id/1081572304/photo/emotion-concept-the-man-raised-his-right-thumb-in-approval-the-expression-on-his-face-means.jpg?s=1024x1024&w=is&k=20&c=ZaCz0wVtMi189PShcgEni1rq2jnSWyxlpXvXyAoxntk=",
  "https://media.istockphoto.com/id/1081572304/photo/emotion-concept-the-man-raised-his-right-thumb-in-approval-the-expression-on-his-face-means.jpg?s=1024x1024&w=is&k=20&c=ZaCz0wVtMi189PShcgEni1rq2jnSWyxlpXvXyAoxntk=",
  "https://media.istockphoto.com/id/1081572304/photo/emotion-concept-the-man-raised-his-right-thumb-in-approval-the-expression-on-his-face-means.jpg?s=1024x1024&w=is&k=20&c=ZaCz0wVtMi189PShcgEni1rq2jnSWyxlpXvXyAoxntk=",
  "https://media.istockphoto.com/id/1081572304/photo/emotion-concept-the-man-raised-his-right-thumb-in-approval-the-expression-on-his-face-means.jpg?s=1024x1024&w=is&k=20&c=ZaCz0wVtMi189PShcgEni1rq2jnSWyxlpXvXyAoxntk=",
  "https://media.istockphoto.com/id/1081572304/photo/emotion-concept-the-man-raised-his-right-thumb-in-approval-the-expression-on-his-face-means.jpg?s=1024x1024&w=is&k=20&c=ZaCz0wVtMi189PShcgEni1rq2jnSWyxlpXvXyAoxntk=",
  "https://media.istockphoto.com/id/1081572304/photo/emotion-concept-the-man-raised-his-right-thumb-in-approval-the-expression-on-his-face-means.jpg?s=1024x1024&w=is&k=20&c=ZaCz0wVtMi189PShcgEni1rq2jnSWyxlpXvXyAoxntk=",
  "https://media.istockphoto.com/id/1081572304/photo/emotion-concept-the-man-raised-his-right-thumb-in-approval-the-expression-on-his-face-means.jpg?s=1024x1024&w=is&k=20&c=ZaCz0wVtMi189PShcgEni1rq2jnSWyxlpXvXyAoxntk=",
  "https://media.istockphoto.com/id/1081572304/photo/emotion-concept-the-man-raised-his-right-thumb-in-approval-the-expression-on-his-face-means.jpg?s=1024x1024&w=is&k=20&c=ZaCz0wVtMi189PShcgEni1rq2jnSWyxlpXvXyAoxntk=",
];

final List<String> postImageProfile = [
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

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: List.generate(10, (index) {
            return Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 350,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      right: 10,
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(postImageProfile[index]),
                                fit: BoxFit.cover,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Profile_Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text("8h ."),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        child: Image.network(
                          postImage[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 55,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border),
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Like",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.comment),
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Comment",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.share_rounded),
                          ),
                          SizedBox(width: 4),
                          Text(
                            "Share",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
              ],
            );
          }),
        ),
      ),
    );
  }
}