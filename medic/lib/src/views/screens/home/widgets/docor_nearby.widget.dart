import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic/src/shared/widgets/doctor_brief_card.widget.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/constant/images.const.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/constant/text_style.const.dart';

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
                style: TextStyling.DARK_POPPINS_SEMI_BOLD,
              ),
              InkWell(
                onTap: () {
                  //Todo implement loading more doctor nearby user
                  print('load more doctor');
                },
                child: Text(
                  StringConstant.SEE_ALL,
                  style: TextStyling.LIGHT_TINY_POPPINS_SEMI_BOLD,
                ),
              ),
            ],
          ),
          WidgetSpacer(
            height: 20.0,
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  DoctorBriefCard(
                    imgUrl: ImageConstant.CORONA,
                    doctorName: 'Dr. Alina James',
                    doctorCer: 'B.Sc, MBBS, DDVL, MD-Dermitologist',
                    rating: 4.2,
                  ),
                  DoctorBriefCard(
                    imgUrl: ImageConstant.CORONA,
                    doctorName: 'Dr. Steve Robert',
                    doctorCer: 'B.Sc, MBBS, DDVL',
                    rating: 4.3,
                  ),
                  DoctorBriefCard(
                    imgUrl: ImageConstant.CORONA,
                    doctorName: 'Dr. Senila Fig',
                    doctorCer: 'B.Sc, MBBS, DDVL, MD-Dermitologist',
                    rating: 3.8,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
