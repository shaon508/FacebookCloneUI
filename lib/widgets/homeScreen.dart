import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2_app/widgets/textfield.dart';

import 'ButtonPage.dart';
import 'buttonData.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final Padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    final boxDecoration = BoxDecoration(
      color: Colors.white10,
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    );
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: const Text("Calculator App")),
          backgroundColor: Colors.white10,
        ),
        body: Column(
          children: [
            CustomTextField(),
            Spacer(),
            Container(
              height: screenHeight * 0.6,
              width: double.infinity,
              padding: Padding,
              decoration: boxDecoration,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        4, (index) => buttonList[index]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        4, (index) => buttonList[index+4]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        4, (index) => buttonList[index+8]),
                  ),
                  Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                 3, (index) => buttonList[index+12]),
                            ),
                            SizedBox(height: 50,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  3, (index) => buttonList[index+15]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 47,),
                      Container(
                        height: 185,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(child: Text("=",style: TextStyle(color : Colors.white,fontSize:50,fontWeight: FontWeight.w600),),),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}