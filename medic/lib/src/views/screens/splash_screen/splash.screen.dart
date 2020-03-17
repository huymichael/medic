import 'package:flutter/material.dart';
import 'package:medic/src/utils/theme/app_color.dart';
import 'package:medic/src/utils/theme/app_font.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
//    openStartScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: AppColor.DEFAULT_COLOR,
          ),
          Center(
            child: Text(
              'MEDEC',
              style: AppFont.MONTSERRAT_BOLD.copyWith(
                fontSize: 60.0,
                color: Colors.white,
                letterSpacing: 3.0,
                shadows: [
                  Shadow(
                    blurRadius: 8.0,
                    color: Colors.black54,
                    offset: Offset(4.0, 6.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//  void openStartScreen() {
//    Future.delayed(Duration(seconds: 3), () {
//      Navigator.pushNamedAndRemoveUntil(
//          context, RoutePath.rootRoute, (_) => false);
//    });
//  }
}
