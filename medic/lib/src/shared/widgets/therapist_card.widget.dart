import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:medic/src/shared/widgets/rounded_outline_button.widget.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/constant/images.const.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/constant/text_style.const.dart';
import 'package:medic/src/utils/theme/app_color.dart';
import 'package:medic/src/utils/theme/app_font.dart';

class TherapistCard extends StatelessWidget {
  TherapistCard(
      {@required this.imgURL,
      @required this.therapistName,
      @required this.therapistCer,
      @required this.therapistSpecialty,
      this.therapistYearExps,
      @required this.address,
      this.rating,
      this.voteNumber,
      this.feedbackNumber,
      @required this.onPress});

  final String imgURL;
  final String therapistName;
  final String therapistCer;
  final String therapistSpecialty;
  final double therapistYearExps;
  final String address;
  final double rating;
  final double voteNumber;
  final double feedbackNumber;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: _buildAvatarSection(),
                  ),
                  WidgetSpacer(width: 15.0),
                  Flexible(
                    child: _buildBasicInfoSection(),
                    flex: 2,
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
              child: Divider(),
            ),
            RoundedOutlineButton(
              onPress: onPress,
              height: 35.0,
              buttonLabel: StringConstant.CONTACT_CLINIC,
              buttonLabelStyle: AppFont.SMALL_POPPINS_SEMI_BOLD
                  .copyWith(color: AppColor.DEFAULT_COLOR),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAvatarSection() {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(imgURL ?? ImageConstant.CORONA),
                radius: 40.0,
              ),
              Positioned.fill(
                  bottom: -5,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: AppColor.GREEN_COLOR, shape: BoxShape.circle),
                      child: Text(
                        rating != null ? '${rating.round()}%' : '0%',
                        style: AppFont.TINY_POPPINS_MEDIUM
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        WidgetSpacer(height: 10.0),
        Text(
          voteNumber != null ? '${voteNumber.round()} votes' : '0 vote',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyling.BROWN_TINY_POPINS,
          textAlign: TextAlign.center,
        ),
        Text(
          feedbackNumber != null
              ? '${feedbackNumber.round()} feebacks'
              : '0 feedback',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: AppFont.SMALL_POPPINS_MEDIUM,
        ),
      ],
    );
  }

  Widget _buildBasicInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          therapistName ?? StringConstant.UNKNOWN,
          style: TextStyling.DARK_POPPINS_SEMI_BOLD,
        ),
        WidgetSpacer(height: 5.0),
        Container(
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.only(bottom: 2.0),
          decoration: BoxDecoration(
              border: Border.all(color: AppColor.LIGHT_GREY),
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(therapistCer ?? StringConstant.UNKNOWN,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyling.LIGHT_BROWN_TINY_POPINS),
              WidgetSpacer(height: 3.0),
              Text(therapistSpecialty ?? StringConstant.UNKNOWN,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyling.LIGHT_BROWN_TINY_POPINS),
              WidgetSpacer(height: 3.0),
              Text(
                  therapistYearExps != null
                      ? '${therapistYearExps.round()} years of expericences'
                      : '$StringConstant.UNKNOWN years of expericences',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyling.LIGHT_BROWN_TINY_POPINS),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: AppColor.DEFAULT_COLOR,
              size: 18.0,
            ),
            Flexible(
              child: Text(
                address ?? StringConstant.UNKNOWN,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    AppFont.SMALL_POPPINS.copyWith(color: AppColor.BROWN_COLOR),
              ),
            )
          ],
        )
      ],
    );
  }
}
