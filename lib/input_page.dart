import 'package:calculatebmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const colorCode = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI_CAL'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  cardChild: iconContent(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                  colour: colorCode,
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    print("PRINT MALE CARD WAS PRESSED");
                  },
                  child: ReusableCard(
                      cardChild: iconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                      colour: colorCode),
                ))
              ],
            )),
            Expanded(
                child: ReusableCard(
                    cardChild: Column(
                      children: [],
                    ),
                    colour: colorCode)),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                        cardChild: Column(
                          children: [],
                        ),
                        colour: Colors.blue)),
                Expanded(
                    child: ReusableCard(
                        cardChild: Column(
                          children: [],
                        ),
                        colour: colorCode))
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
