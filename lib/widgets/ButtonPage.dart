import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,required this.lebel, this.textColor = Colors.white,
  });
  final String lebel;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation : 3,
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        backgroundColor: Colors.black12,
        radius: 36,
        child: Text(
          lebel,
          style: TextStyle(color : textColor,fontSize: 32,fontWeight: FontWeight.w600),
        ),

      ),
    );
  }
}
