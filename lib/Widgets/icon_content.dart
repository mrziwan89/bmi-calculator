import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  @required
  final String label;
  @required
  final icon;
  IconContent({this.icon, this.label});
  @override
  Widget build(BuildContext context) {
    final _deviceHeight = MediaQuery.of(context).size.height;
    //final _deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: _deviceHeight * 0.13,
        ),
        SizedBox(
          height: _deviceHeight * 0.005,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
