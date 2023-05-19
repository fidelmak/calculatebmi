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
  int weight = 60;
  int age = 19;
  void add() {
    setState(() {
      weight++;
    });
  }

  void minus() {
    setState(() {
      weight--;
    });
  }

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
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0),
                              thumbColor: Color(0xffeb1555),
                              overlayColor: Color(0x29e81558)),
                          child: Slider(
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
                  colour: kInactiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "WEIGHT",
                        style: kLabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(() {
                                weight -= 1;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.add,
                            onPressed: () {
                              setState(() {
                                weight += 1;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                          onPress: () {},
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "AGE",
                                style: kLabelTextStyle,
                              ),
                              Text(
                                age.toString(),
                                style: kNumberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        age -= 1;
                                      });
                                    },
                                  ),
                                  SizedBox(width: 10.0),
                                  RoundIconButton(
                                    icon: FontAwesomeIcons.add,
                                    onPressed: () {
                                      setState(() {
                                        age += 1;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          colour: kInactiveColor),
                    ),
                  ],
                ))
              ],
            )),
            Container(
              child: Center(
                child: Text(
                  "Calculate BMI",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        child: Icon(icon),
        elevation: 0.0,
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        shape: CircleBorder(),
        fillColor: Color(0xff4c4f5e));
  }
}
