import 'package:flutter/material.dart';
import 'screens/mainPage.dart';
import 'screens/result.dart';
import 'models/bmi_logic.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //BMILogic calc = BMILogic();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => BMICalc(),
        '/result': (context) => BMIResult(),
      },
    );
  }
}
