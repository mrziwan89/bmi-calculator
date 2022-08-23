import 'package:flutter/material.dart';

double kscreenHeight;
double kscreenWidth;
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
var kLabelTextStyle =
    TextStyle(fontSize: kscreenHeight * 0.02, color: Color(0xFF8D8E98));
var kNumberTextStyle = TextStyle(
  fontSize: kscreenHeight * 0.065,
  fontWeight: FontWeight.w900,
);
var kLargeButtonStyle = TextStyle(
    fontSize: kscreenHeight * 0.8,
    fontWeight: FontWeight.bold,
    color: Colors.white);
var kBottomContainerColor = Color(0xFFEB1555);

var kTitleTextStyle = TextStyle(
  fontSize: kscreenHeight * 0.08,
);

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPress});
  final IconData icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      elevation: 0.0,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: kscreenHeight * 0.05,
        height: kscreenHeight * 0.05,
      ),
      shape: CircleBorder(),
      fillColor: Color(0x308D8E98),
    );
  }
}

class BottomButton extends StatelessWidget {
  final Function onPress;
  final String text;
  BottomButton({this.text, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
            child: Text(
          text,
          style: TextStyle(
            fontSize: kscreenHeight * 0.035,
            fontWeight: FontWeight.bold,
          ),
        )),
        color: kBottomContainerColor,
        height: kscreenHeight * 0.102,
        width: kscreenWidth,
      ),
    );
  }
}

var kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: kscreenHeight * 0.03,
  fontWeight: FontWeight.bold,
);

var kBMITextStyle = TextStyle(
  fontSize: kscreenHeight * 0.14,
  fontWeight: FontWeight.bold,
);

var kBMILabelStyle = TextStyle(
  fontSize: kscreenHeight * 0.03,
);

var kBMINormTextStyle = TextStyle(
  color: Color(0xFF8D8E98),
);
