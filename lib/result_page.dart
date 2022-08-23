import 'package:bmi_calculator/Widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'Widgets/constants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.bmiText, this.bmiInterpretation});
  final String bmiResult;
  final String bmiText;
  final String bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: kscreenHeight * 0.075),
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(left: kscreenHeight * 0.02),
                child: Text(
                  'Your Result',
                  style: kTitleTextStyle,
                  textAlign: TextAlign.left,
                ),
              )),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    bmiText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Normal BMI range:',
                    style: kBMINormTextStyle,
                  ),
                  Text(
                    '18.5 - 25 Kg/m2',
                    style: kBMINormTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      bmiInterpretation,
                      style: kBMILabelStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              text: "Re-Calculate",
              onPress: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
