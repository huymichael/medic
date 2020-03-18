import 'package:flutter/material.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/constant/images.const.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/theme/app_font.dart';

class ThirdOnBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 100.0,horizontal: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Center(
              child: Image.asset(
                ImageConstant.ON_BOARDING3,
                width: 200,
                height: 200,
              ),
            ),
          ),
          WidgetSpacer(
            height: 15.0,
          ),
          Text(
            StringConstant.BOOK_DIAGNOS,
            textAlign: TextAlign.center,
            style: AppFont.POPPINS_SEMI_BOLD.copyWith(fontSize: 20.0),
          ),
          WidgetSpacer(
            height: 10.0,
          ),
          Text(
            StringConstant.BOOK_DIAGNOS_DESC,
            textAlign: TextAlign.center,
            style: AppFont.POPPINS_LIGHT,
          ),
        ],
      ),
    );
  }
}
