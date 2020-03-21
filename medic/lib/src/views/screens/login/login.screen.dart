import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medic/src/shared/widgets/rounded_button.wdiget.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/constant/images.const.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/constant/style.const.dart';
import 'package:medic/src/utils/theme/app_color.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double _screenWidth = MediaQuery.of(context).size.width;
    final double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: _screenWidth,
            height: _screenHeight * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35.0),
                  bottomRight: Radius.circular(35.0)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(ImageConstant.LOGIN),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.DEFAULT_COLOR.withOpacity(0.75),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0)),
              ),
              child: Center(
                child: Text(
                  StringConstant.MEDICO,
                  style: AppStyling.MEDICO,
                ),
              ),
            ),
          ),
          WidgetSpacer(height: 80.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RoundedButton(
                  buttonIcon: Icon(
                    Icons.smartphone,
                    color: AppColor.DEFAULT_COLOR,
                    size: 18.0,
                  ),
                  buttonLabel: StringConstant.MOBILE_NUM,
                  buttonLabelStyle: AppStyling.LOGIN_BUTTON
                      .copyWith(color: AppColor.DEFAULT_COLOR),
                  buttonColor: Colors.white,
                  elevation: 3.0,
                  borderRadius: 30.0,
                  onPress: () {
                    print('213');
                  },
                ),
                WidgetSpacer(height: 15.0),
                RoundedButton(
                  buttonIcon: Icon(
                    FontAwesomeIcons.google,
                    size: 18.0,
                    color: Colors.red,
                  ),
                  buttonLabel: StringConstant.GOOGLE,
                  buttonColor: Colors.white,
                  elevation: 3.0,
                  borderRadius: 30.0,
                  buttonLabelStyle:
                      AppStyling.LOGIN_BUTTON.copyWith(color: Colors.red),
                  onPress: () {
                    print('234');
                  },
                ),
                WidgetSpacer(height: 30.0),
                Text(
                  StringConstant.AGREE_TERMS,
                  style: AppStyling.AGREE_TERMS,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
