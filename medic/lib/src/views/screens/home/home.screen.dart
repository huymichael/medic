import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/theme/app_color.dart';
import 'package:medic/src/views/screens/home/widgets/docor_nearby.widget.dart';
import 'package:medic/src/views/screens/home/widgets/home_header.widget.dart';
import 'package:medic/src/views/screens/home/widgets/share_friend_code.widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: _screenHeight * 0.25,
              decoration: BoxDecoration(
                  color: AppColor.DEFAULT_COLOR,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular((24.0)),
                      bottomRight: Radius.circular(24.0))),
              child: _buildHeader(),
            ),
            WidgetSpacer(height: 120.0),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/img/banner.jpg'),
                                fit: BoxFit.cover)),
                        height: 150.0,
                      ),
                      WidgetSpacer(height: 30.0),
                      _buildDoctorNearby(),
                      WidgetSpacer(height: 30.0),
                      _buildShareFriendCode(),
                      WidgetSpacer(height: 20.0)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildHeader() => HomeHeader();

  _buildDoctorNearby() => DoctorNearby();

  _buildShareFriendCode() => ShareFriendCode();
}
