import 'package:calculatebmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const inactiveColor = Color(0xFF1D1E33);
const activeCardColor = Color(0xff1111328);
const bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color MaleCardColor = inactiveColor;
  Color FemaleCardColor = inactiveColor;
  void updateColor(int val) {
    if (val == 1) {
      if (MaleCardColor == inactiveColor) {
        MaleCardColor = activeCardColor;
        FemaleCardColor = inactiveColor;
      } else {
        MaleCardColor = inactiveColor;
        FemaleCardColor = activeCardColor;
      }
    }

    if (val == 2) {
      if (FemaleCardColor == inactiveColor) {
        FemaleCardColor = activeCardColor;
        MaleCardColor = inactiveColor;
      } else {
        FemaleCardColor = inactiveColor;
        MaleCardColor = activeCardColor;
      }
    }
  }

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
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    colour: MaleCardColor,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                  ),
                )),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: FemaleCardColor,
                      cardChild: iconContent(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                )
              ],
            )),
            Expanded(
                child: ReusableCard(
                    cardChild: Column(
                      children: [Text("data")],
                    ),
                    colour: inactiveColor)),
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
                        colour: inactiveColor))
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
