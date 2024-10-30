import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class appBarButton extends StatelessWidget {
  const appBarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(

        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.black12,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, color: Colors.black), // Added color for visibility
            ),

          ),
          SizedBox(width: 10,),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.black12,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.black), // Added color for visibility
            ),
          ),
          SizedBox(width: 10,),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.black12,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_rounded, color: Colors.black), // Added color for visibility
            ),

          ),
        ],
      ),

    );
  }
}
