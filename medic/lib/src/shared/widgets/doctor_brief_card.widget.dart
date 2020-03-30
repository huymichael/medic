import 'package:flutter/material.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/constant/text_style.const.dart';

class DoctorBriefCard extends StatelessWidget {
  DoctorBriefCard(
      {@required this.imgUrl,
      @required this.doctorName,
      @required this.doctorCer,
      this.rating});

  final String imgUrl;
  final String doctorName;
  final String doctorCer;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Container(
        constraints: BoxConstraints(maxHeight: 250, maxWidth: 160.0),
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 30.0,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Positioned.fill(
                    top: -30,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(imgUrl),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            WidgetSpacer(height: 15.0),
            Text(
              doctorName,
              style: TextStyling.DARK_2_POPPINS_SEMI_BOLD,
            ),
            WidgetSpacer(height: 10.0),
            doctorCer != null
                ? Text(
                    'B.Sc, MBBS, DDVL, MD-Dermitologist',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyling.BROWN_TINY_POPINS,
                  )
                : Container(),
            WidgetSpacer(height: 10.0),
            rating != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.yellow),
                      WidgetSpacer(width: 5.0),
                      Text(
                        '4.3',
                        style: TextStyling.BROWN_POPINS,
                      ),
                    ],
                  )
                : Container(),
            WidgetSpacer(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
