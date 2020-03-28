import 'package:flutter/material.dart';
import 'package:medic/src/utils/theme/app_color.dart';

class ScreenHeader extends StatelessWidget {
  ScreenHeader({@required this.child, this.color});

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final double _screenHeight = MediaQuery.of(context).size.height;
    return Container(
        height: _screenHeight * 0.25,
        decoration: BoxDecoration(
            color: color ?? AppColor.DEFAULT_COLOR,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular((24.0)),
                bottomRight: Radius.circular(24.0))),
        child: child);
  }
}
