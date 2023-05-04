import 'package:calculatebmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const inactiveColor = Color(0xFF1D1E33);
const activeCardColor = Color(0xff1111328);
const bottomContainerColor = Color(0xffeb1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color MaleCardColor = inactiveColor;
  // Color FemaleCardColor = inactiveColor;
  // void updateColor(Gender SelectedGender) {
  //   MaleCardColor == inactiveColor ? activeCardColor : inactiveColor;

  //   if (SelectedGender == Gender.male) {
  //     if (MaleCardColor == inactiveColor) {
  //       MaleCardColor = activeCardColor;
  //       FemaleCardColor = inactiveColor;
  //     } else {
  //       MaleCardColor = inactiveColor;
  //       FemaleCardColor = activeCardColor;
  //     }
  //   }

  //   if (SelectedGender == Gender.female) {
  //     if (FemaleCardColor == inactiveColor) {
  //       FemaleCardColor = activeCardColor;
  //       MaleCardColor = inactiveColor;
  //     } else {
  //       FemaleCardColor = inactiveColor;
  //       MaleCardColor = activeCardColor;
  //     }
  //   }
  // }

  Gender? selectedGender;

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
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveColor,
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
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveColor,
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
