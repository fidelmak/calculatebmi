import 'package:flutter/material.dart';

import 'input_page.dart';

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
        accentColor: Colors.pink,
      ),
      home: InputPage(),
    );
  }
}
