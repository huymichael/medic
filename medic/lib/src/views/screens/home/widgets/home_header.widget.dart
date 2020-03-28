import 'package:flutter/material.dart';
import 'package:medic/src/shared/widgets/circle_icon_button.widget.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/constant/images.const.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/constant/text_style.const.dart';
import 'package:medic/src/utils/routes/route.dart';
import 'package:medic/src/views/screens/search_doctor/search_doctor.screen.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 26.0),
            child: Text(
              StringConstant.MEDICO,
              style: TextStyling.MEDIUM_SCREEN_HEADER_LABEL,
            ),
          ),
        ),
        Positioned.fill(
          bottom: -80,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleIconButton(
                        elevation: 4.0,
                        icon: Image.asset(
                          ImageConstant.NURSE_ICON,
                          height: 40.0,
                        ),
                        onPress: () {
                          Routing().navigateTo(context, SearchDoctorScreen());
                        },
                      ),
                      WidgetSpacer(height: 5.0),
                      Text(StringConstant.DOCTOR,
                          style: TextStyling.POPPINS_SEMI_BOLD_14),
                      Text(
                        StringConstant.DOCTOR_DECS,
                        textAlign: TextAlign.center,
                        style: TextStyling.BROWN_LIGHT_TEXT_11,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleIconButton(
                        elevation: 4.0,
                        icon: Image.asset(
                          ImageConstant.PILL_ICON,
                          height: 40.0,
                        ),
                        onPress: () {},
                      ),
                      WidgetSpacer(height: 5.0),
                      Text(StringConstant.MEDICINES,
                          style: TextStyling.POPPINS_SEMI_BOLD_14),
                      Text(
                        StringConstant.MEDICINES_DECS,
                        textAlign: TextAlign.center,
                        style: TextStyling.BROWN_LIGHT_TEXT_11,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleIconButton(
                        elevation: 4.0,
                        icon: Image.asset(
                          ImageConstant.MICROSCOPE_ICON,
                          height: 40.0,
                        ),
                        onPress: () {},
                      ),
                      WidgetSpacer(height: 5.0),
                      Text(StringConstant.DIAGNOSTIC,
                          style: TextStyling.POPPINS_SEMI_BOLD_14),
                      Text(
                        StringConstant.DIAGNOSTIC_DECS,
                        textAlign: TextAlign.center,
                        style: TextStyling.BROWN_LIGHT_TEXT_11,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
