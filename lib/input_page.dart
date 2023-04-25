import 'package:flutter/material.dart';

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
                  colour: colorCode,
                )),
                Expanded(child: ReusableCard(colour: colorCode))
              ],
            )),
            Expanded(child: ReusableCard(colour: colorCode)),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(colour: Colors.blue)),
                Expanded(child: ReusableCard(colour: colorCode))
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

class ReusableCard extends StatelessWidget {
  final Color colour;

  ReusableCard({required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
