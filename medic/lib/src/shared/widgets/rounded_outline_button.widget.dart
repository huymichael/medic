import 'package:flutter/material.dart';
import 'package:medic/src/utils/theme/app_color.dart';

class RoundedOutlineButton extends StatelessWidget {
  RoundedOutlineButton({
    @required this.buttonLabel,
    @required this.onPress,
    this.height,
    this.buttonLabelStyle,
    this.buttonFillColor,
    this.buttonOutlineColor,
    this.buttonIcon,
    this.elevation,
    this.borderRadius,
  });

  final String buttonLabel;
  final TextStyle buttonLabelStyle;
  final Function onPress;
  final Color buttonFillColor;
  final Color buttonOutlineColor;
  final double height;
  final Widget buttonIcon;
  final double elevation;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50.0,
      child: RaisedButton(
        elevation: elevation ?? 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius??15.0),
          side: BorderSide(
              color: buttonOutlineColor ?? AppColor.DEFAULT_COLOR,
              width: 1.0,
              style: BorderStyle.solid),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buttonIcon != null
                ? Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: buttonIcon,
                  )
                : Container(),
            Text(
              buttonLabel,
              textAlign: TextAlign.center,
              style: buttonLabelStyle,
            ),
          ],
        ),
        onPressed: onPress,
        color: buttonFillColor ?? Colors.white,
      ),
    );
  }
}
