import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class firstPartOfBody extends StatelessWidget{
  const firstPartOfBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                //  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(

                    hintText: "What's on your mind",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top:15),
                height: 40,
                width: 2,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.2,color: Colors.black12),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
                child:Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.video_call),
                    ),
                    SizedBox(width: 8,),
                    Text(
                      "Discuss",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top:15),
                height: 40,
                width: 2,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.2,color: Colors.black12),
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
                child:Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.photo_library_outlined),
                    ),
                    SizedBox(width: 8,),
                    Text(
                      "Photo",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top:15),
                height: 40,
                width: 2,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.2,color: Colors.black12),
                  shape: BoxShape.rectangle,
                  color: Colors.white,

                ),
                child:Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.message_sharp),
                    ),
                    SizedBox(width: 8,),
                    Text(
                      "Live",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

}