import 'dart:math';
import 'package:flutter/material.dart';

class BMILogic {
  BMILogic({@required this.height, @required this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You are too fat! don\'t eat anymore';
    } else if (_bmi >= 18.5) {
      return 'Feeling good, huh? Remember everyone will die';
    } else {
      return 'Get a job and eat more!';
    }
  }
}

class ResultText {
  final String bmi;
  final String result;
  final String interpretation;

  ResultText(
      {@required this.bmi,
      @required this.result,
      @required this.interpretation});
}
