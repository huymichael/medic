import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final Widget icon;
  final double buttonSize;
  final Color buttonColor;
  final Function onPress;
  final double elevation;

  CircleIconButton(
      {@required this.onPress,
      @required this.icon,
      this.buttonSize,
      this.buttonColor,
      this.elevation});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: icon,
      elevation: elevation ?? 0.0,
      constraints: BoxConstraints.tightFor(
        width: buttonSize ?? 60.0,
        height: buttonSize ?? 60.0,
      ),
      shape: CircleBorder(),
      fillColor: buttonColor ?? Colors.white,
      onPressed: onPress,
    );
  }
}
