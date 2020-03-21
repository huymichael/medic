import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {@required this.buttonLabel,
      @required this.onPress,
      this.height,
      this.buttonLabelStyle,
      this.buttonColor,
      this.buttonIcon,
      this.elevation,
      this.borderRadius});

  final String buttonLabel;
  final TextStyle buttonLabelStyle;
  final Function onPress;
  final Color buttonColor;
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
          borderRadius: BorderRadius.circular(borderRadius ?? 15.0),
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
        color: buttonColor,
      ),
    );
  }
}
