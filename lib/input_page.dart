import 'package:calculatebmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'constants/constants.dart';

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
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI_CAL'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveColor,
                  cardChild: iconContent(
                    icon: FontAwesomeIcons.mars,
                    label: "MALE",
                  ),
                )),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveColor,
                    cardChild: iconContent(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                  ),
                )
              ],
            )),
            Expanded(
                child: ReusableCard(
                    onPress: () {},
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Height",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            Text(
                              'cm',
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                          activeColor: Color(0xffeb1555),
                          inactiveColor: Color(0xff808e98),
                        ),
                      ],
                    ),
                    colour: kInactiveColor)),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                        onPress: () {},
                        cardChild: Column(
                          children: [],
                        ),
                        colour: Colors.blue)),
                Expanded(
                    child: ReusableCard(
                        onPress: () {},
                        cardChild: Column(
                          children: [],
                        ),
                        colour: kInactiveColor))
              ],
            )),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ));
  }
}
