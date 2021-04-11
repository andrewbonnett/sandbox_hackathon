import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Function onPressed;
  final Color enabledColor;
  final Color disabledColor;
  final Color textColor;
  final String title;
  final bool isEnabled;
  final double width;
  final double height;
  final double fontSize;
  final FontWeight fontWeight;

  RoundedButton({
    @required this.onPressed,
    this.disabledColor,
    @required this.enabledColor,
    @required this.title,
    @required this.isEnabled,
    this.textColor = Colors.white,
    @required this.width,
    @required this.height,
    this.fontSize = 17.0,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0.0,
      color: isEnabled ? enabledColor : disabledColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      onPressed: onPressed,
      minWidth: width,
      height: height,
      child: Text(
        title,
        style: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
