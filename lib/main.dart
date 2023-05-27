import 'package:calculatebmi/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'screens/calculate_result.dart';
import 'screens/input_page.dart';
import 'model/calculatorBrain.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        appBarTheme:
            AppBarTheme(color: Color(0xff0A0E21) // Set the color for the AppBar
                ),
        scaffoldBackgroundColor: Color(0xff0A0E21),
        hintColor: Colors.pink,
      ),
      initialRoute: "/",
      routes: navigate,
    );
  }
}

//bmiBrain cal = bmiBrain(height: height, weight: weight);
Map<String, WidgetBuilder> navigate = {
  "/": (BuildContext context) => InputPage(),
  // "/result": (BuildContext context) => calResult(
  //       bmiResult: cal.calculateBmi(),
  //       interpretation: cal.getInterpretations(),
  //       resultText: cal.getResult(),
  //     ),
};
