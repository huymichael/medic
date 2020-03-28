import 'package:flutter/material.dart';
import 'package:medic/src/utils/theme/app_color.dart';
import 'package:medic/src/utils/theme/app_font.dart';

class AppStyling {
  //TEXT
  static final TextStyle SKIP_ON_BOARD = AppFont.MONTSERRAT_BOLD
      .copyWith(color: AppColor.DEFAULT_COLOR, fontSize: 16.0);

  static final TextStyle MEDICO =
      AppFont.MONTSERRAT_BOLD.copyWith(color: Colors.white, fontSize: 40.0);

  static final TextStyle POPPINS_SEMI_BOLD_12 =
      AppFont.POPPINS_SEMI_BOLD.copyWith(fontSize: 12.0);

  static final TextStyle POPPINS_SEMI_BOLD_14 =
      AppFont.POPPINS_SEMI_BOLD.copyWith(fontSize: 14.0);

  static final TextStyle LIGHT_POPPINS_SEMI_BOLD_12 =
      AppFont.POPPINS_SEMI_BOLD.copyWith(fontSize: 12.0,color: AppColor.LIGHT_COLOR);

  static final TextStyle DARK_POPPINS_SEMI_BOLD_14 =
      AppFont.POPPINS_SEMI_BOLD.copyWith(fontSize: 14.0,color: AppColor.DARK_COLOR_1);

  static final TextStyle DARK_2_POPPINS_SEMI_BOLD_10 =
      AppFont.POPPINS_SEMI_BOLD.copyWith(fontSize: 14.0,color: AppColor.DARK_COLOR_2);

  static final TextStyle BROWN_REGULAR_TEXT_12 = AppFont.POPPINS
      .copyWith(fontSize: 12.0, color: AppColor.BROWN_COLOR);

  static final TextStyle BROWN_REGULAR_TEXT_15 = AppFont.POPPINS
      .copyWith(fontSize: 15.0, color: AppColor.BROWN_COLOR);

  static final TextStyle BROWN_LIGHT_TEXT_11 = AppFont.POPPINS_LIGHT
      .copyWith(fontSize: 11.0, color: AppColor.BROWN_COLOR);

  static final TextStyle BROWN_LIGHT_TEXT_14 = AppFont.POPPINS_LIGHT
      .copyWith(fontSize: 14.0, color: AppColor.BROWN_COLOR);



  //BUTTON LABEL
  static final TextStyle LOGIN_BUTTON =
      AppFont.POPPINS.copyWith(fontSize: 15.0);
}
