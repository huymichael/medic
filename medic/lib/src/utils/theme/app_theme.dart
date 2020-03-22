import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_font.dart';

class AppTheme {
  static final _textTheme = TextTheme(
      title: AppFont.POPPINS_BOLD,
      headline: AppFont.POPPINS_BOLD,
      subhead: AppFont.POPPINS_LIGHT,
      subtitle: AppFont.POPPINS_LIGHT,
      body1: AppFont.POPPINS,
      body2: AppFont.POPPINS,
      button: AppFont.POPPINS_SEMI_BOLD);

  static final customTheme = ThemeData(
    primaryColor: AppColor.DEFAULT_COLOR,
    scaffoldBackgroundColor: AppColor.SMOKE_COLOR,
    brightness: Brightness.light,
    textTheme: _textTheme,
  );
}
