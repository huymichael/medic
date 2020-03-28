import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic/src/shared/widgets/rounded_button.wdiget.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/constant/images.const.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/constant/text_style.const.dart';
import 'package:medic/src/utils/routes/route.dart';
import 'package:medic/src/views/screens/home/home.screen.dart';

class LoginByPhoneScreen extends StatefulWidget {
  @override
  _LoginByPhoneScreenState createState() => _LoginByPhoneScreenState();
}

class _LoginByPhoneScreenState extends State<LoginByPhoneScreen> {
  @override
  Widget build(BuildContext context) {
    final double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      child: Image.asset(
                        ImageConstant.PHONE_MESSAGE,
                        fit: BoxFit.contain,
                      ),
                    ),
                    WidgetSpacer(
                      height: 20.0,
                    ),
                    Text(
                      StringConstant.ENTER_MOBILE,
                      textAlign: TextAlign.center,
                      style: TextStyling.BROWN_LIGHT_TEXT_14,
                    )
                  ],
                ),
              ),
              WidgetSpacer(height: 60.0),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Flexible(
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                initialValue: '+84',
                              ),
                              flex: 2,
                            ),
                            WidgetSpacer(
                              width: 15.0,
                            ),
                            Flexible(
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                initialValue: '123456789',
                              ),
                              flex: 5,
                            ),
                          ],
                        ),
                      ),
                      WidgetSpacer(
                        height: 30.0,
                      ),
                      RoundedButton(
                        buttonLabel: StringConstant.SUBMIT,
                        onPress: () {
                          Routing().navigateTo(context, HomeScreen());
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
