import 'package:flutter/material.dart';
import 'package:medic/src/utils/theme/app_color.dart';
import 'package:medic/src/utils/theme/app_font.dart';

class TextStyling {
  //TEXT
  static final TextStyle SKIP_ON_BOARD = AppFont.MONTSERRAT_BOLD
      .copyWith(color: AppColor.DEFAULT_COLOR, fontSize: 16.0);

  static final TextStyle LARGE_MONT_BOLD =
      AppFont.MONTSERRAT_BOLD.copyWith(color: Colors.white, fontSize: 40.0);

  static final TextStyle WHITE_INCREASED_MONT_BOLD =
      AppFont.MONTSERRAT_BOLD.copyWith(color: Colors.white, fontSize: 17.0);

  static final TextStyle LIGHT_TINY_POPPINS_SEMI_BOLD =
      AppFont.TINY_POPPINS_SEMI_BOLD.copyWith(color: AppColor.LIGHT_COLOR);

  static final TextStyle DARK_POPPINS_SEMI_BOLD =
      AppFont.POPPINS_SEMI_BOLD.copyWith(color: AppColor.DARK_COLOR_1);

  static final TextStyle DARK_2_POPPINS_SEMI_BOLD =
      AppFont.POPPINS_SEMI_BOLD.copyWith(color: AppColor.DARK_COLOR_2);

  static final TextStyle BROWN_TINY_POPINS =
      AppFont.TINY_POPPINS.copyWith(color: AppColor.BROWN_COLOR);

  static final TextStyle LIGHT_BROWN_TINY_POPINS =
      AppFont.TINY_POPPINS.copyWith(color: AppColor.LIGHT_BROWN_COLOR);

  static final TextStyle BROWN_POPINS =
      AppFont.POPPINS.copyWith(color: AppColor.BROWN_COLOR);

  static final TextStyle BROWN_TINY_POPINS_LIGHT =
      AppFont.TINY_POPPINS_LIGHT.copyWith(color: AppColor.BROWN_COLOR);

  static final TextStyle BROWN_POPINS_LIGHT =
      AppFont.POPPINS_LIGHT.copyWith(color: AppColor.BROWN_COLOR);

  //BUTTON LABEL
  static final TextStyle LOGIN_BUTTON =
      AppFont.POPPINS.copyWith(fontSize: 15.0);
}
