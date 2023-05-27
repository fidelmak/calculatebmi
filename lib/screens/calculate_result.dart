// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../model/calculatorBrain.dart';
import '../constants/constants.dart';
import 'input_page.dart';
import '/components/reusable_card.dart';

class calResult extends StatefulWidget {
  calResult({
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  State<calResult> createState() => _calResultState();
}

class _calResultState extends State<calResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            child: Text(
              "Your Result",
              style: kTitleTestStyle,
            ),
          )),
          Expanded(
              flex: 6,
              child: ReusableCard(
                  colour: kInactiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.resultText.toUpperCase(),
                        style: kResultTestStyle,
                      ),
                      Text(
                        widget.bmiResult,
                        style: kBMITestStyle,
                      ),
                      Text(
                        widget.interpretation,
                        textAlign: TextAlign.center,
                        style: kBodyTestStyle,
                      ),
                    ],
                  ),
                  onPress: () {})),
          BottomButton(
            buttomTitle: "Re-Calculate",
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          )
        ],
      ),
    );
  }
}
