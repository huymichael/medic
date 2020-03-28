import 'package:flutter/material.dart';
import 'package:medic/src/utils/theme/app_color.dart';

class WidgetStyling {
  static final InputDecoration WHITE_HEADER_SEARCH = InputDecoration(
      contentPadding: EdgeInsets.all(10.0),
      filled: true,
      fillColor: Colors.white,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.LIGHT_GREY),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.LIGHT_GREY),
          borderRadius: BorderRadius.all(Radius.circular(15.0))));
}
