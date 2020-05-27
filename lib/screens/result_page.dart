import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: PageBody(),
    );
  }
}

class PageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, Object> receivedData =
        ModalRoute.of(context).settings.arguments;

    String bmiResult = receivedData['bmiResult'];
    String resultText = receivedData['resultText'];
    String interpretation = receivedData['interpretation'];

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: ReusableCard(
            colour: kActiveCardColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$resultText',
                  style: kResultTextStyle,
                ),
                Text(
                  '$bmiResult',
                  style: kBMITextStyle,
                ),
                Text(
                  '$interpretation',
                  textAlign: TextAlign.center,
                  style: kBodyTextStyle,
                ),
              ],
            ),
          ),
        ),
        BottomButton(
          text: 'RE-CALCULATE',
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
