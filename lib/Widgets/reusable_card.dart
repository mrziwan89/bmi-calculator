import 'package:bmi_calculator/Widgets/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  @required
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  ReusableCard({
    this.colour,
    this.cardChild,
    this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(kscreenHeight * 0.02),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(kscreenWidth * 0.02)),
        height: kscreenHeight * 0.22,
        width: double.infinity,
      ),
    );
  }
}
