import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/constant/style.const.dart';
import 'package:medic/src/utils/theme/app_color.dart';

class DoctorNearby extends StatefulWidget {
  @override
  _DoctorNearbyState createState() => _DoctorNearbyState();
}

class _DoctorNearbyState extends State<DoctorNearby> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                StringConstant.DOCTOR_NEARBY,
                style: AppStyling.DARK_POPPINS_SEMI_BOLD_14,
              ),
              InkWell(
                onTap: () {
                  //Todo implement loading more doctor nearby user
                  print('load more doctor');
                },
                child: Text(
                  StringConstant.SEE_ALL,
                  style: AppStyling.LIGHT_POPPINS_SEMI_BOLD_12,
                ),
              ),
            ],
          ),
          WidgetSpacer(
            height: 40.0,
          ),
          Card(
            child: Container(
              height: 150.0,
              width: 140.0,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Positioned.fill(
                    top: -30,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/img/corona_virus.jpg'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
