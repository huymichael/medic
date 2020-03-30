import 'package:flutter/material.dart';
import 'package:medic/src/shared/widgets/rounded_button.wdiget.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/constant/images.const.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/constant/text_style.const.dart';
import 'package:medic/src/utils/routes/route.dart';
import 'package:medic/src/views/screens/home/home.screen.dart';

class LoginByMailScreen extends StatefulWidget {
  @override
  _LoginByMailScreenState createState() => _LoginByMailScreenState();
}

class _LoginByMailScreenState extends State<LoginByMailScreen> {
  @override
  Widget build(BuildContext context) {
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
                        ImageConstant.MESSAGING,
                        fit: BoxFit.contain,
                      ),
                    ),
                    WidgetSpacer(
                      height: 20.0,
                    ),
                    Text(
                      StringConstant.ENTER_EMAIL,
                      textAlign: TextAlign.center,
                      style: TextStyling.BROWN_POPINS_LIGHT,
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
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Your Email',
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      WidgetSpacer(height: 15.0),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
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
