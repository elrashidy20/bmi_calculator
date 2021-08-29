import 'package:bmi_calculator/BMI_Result.dart';
import 'package:bmi_calculator/BmiScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'BMI Calculator',
      home: BmiScreen(),

    );
  }
}