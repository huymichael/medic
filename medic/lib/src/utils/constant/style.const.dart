import 'package:flutter/material.dart';
import 'package:medic/src/utils/theme/app_color.dart';
import 'package:medic/src/utils/theme/app_font.dart';

class AppStyling {
  //TEXT
  static final TextStyle SKIP_ON_BOARD = AppFont.MONTSERRAT_BOLD
      .copyWith(color: AppColor.DEFAULT_COLOR, fontSize: 16.0);
  static final TextStyle MEDICO =
      AppFont.MONTSERRAT_BOLD.copyWith(color: Colors.white, fontSize: 40.0);
  static final TextStyle AGREE_TERMS =
      AppFont.POPPINS_LIGHT.copyWith(fontSize: 11.0,color: AppColor.BROWN_COLOR);

  //BUTTON LABEL
  static final TextStyle LOGIN_BUTTON =
      AppFont.POPPINS.copyWith(fontSize: 15.0);
}
