import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test2_app/widgets/homeScreen.dart';
import 'package:test2_app/widgets/textfield.dart';

void main()
{
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}





