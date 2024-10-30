import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'appBarButton.dart';
import 'bodyPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,

      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10,
        title: Text(
          "facebook",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          appBarButton(),
        ],
      ),
      body: BodyPage(),
      bottomNavigationBar: Container(
        height: 100,
        child: BottomNavigationBar(

          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined),
              label: "Videos",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.groups_2_rounded),
              label: "Groups",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notification",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_rounded),
              label: "Menu",
            ),
          ],
        ),
      ),
    );
  }
}
