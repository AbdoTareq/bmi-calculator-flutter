import 'package:flutter/material.dart';

import 'file:///D:/Android_projeccts/flutter/bmi-calculator-flutter/lib/screens/result_page.dart';

import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/first': (context) => ResultPage(),
      },
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xff0A0E21),
          scaffoldBackgroundColor: Color(0xff0A0E21)),
    );
  }
}
