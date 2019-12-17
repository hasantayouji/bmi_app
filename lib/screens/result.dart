import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../widgets/reusableCard.dart';
import '../constants.dart';
import '../models/bmi_logic.dart';

class BMIResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ResultText result = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Container(
                  child: ColorizeAnimatedTextKit(
                    textAlign: TextAlign.start,
                    alignment: AlignmentDirectional.topStart,
                    text: [' Your Result '],
                    colors: [
                      Colors.purple,
                      Colors.blue,
                      Colors.yellow,
                      Colors.red,
                    ],
                    textStyle: TextStyle(
                        fontSize: 50,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      result.result,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF24D876),
                      ),
                    ),
                    Text(
                      result.bmi,
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(result.interpretation),
                  ],
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: kBottomContainerColor,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Recalculate!',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
