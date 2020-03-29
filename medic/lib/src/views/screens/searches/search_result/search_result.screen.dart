import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medic/src/shared/widgets/rounded_outline_button.widget.dart';
import 'package:medic/src/shared/widgets/screen_header.widget.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/constant/images.const.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/constant/text_style.const.dart';
import 'package:medic/src/utils/theme/app_color.dart';
import 'package:medic/src/utils/theme/app_font.dart';
import 'package:medic/src/views/screens/searches/search_result/widgets/search_result_header.widget.dart';

class SearchResultScreen extends StatelessWidget {
  SearchResultScreen({@required this.headerTitle});

  final String headerTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ScreenHeader(
              child: _buildHeader(headerTitle),
            ),
            WidgetSpacer(height: 30.0),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView.separated(
                    separatorBuilder: (context,index)=>WidgetSpacer(height: 10.0),
                    physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(20.0))),
                          child: Container(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(bottom: 15.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle),
                                              child: Stack(
                                                overflow: Overflow.visible,
                                                children: <Widget>[
                                                  CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        ImageConstant.CORONA),
                                                    radius: 40.0,
                                                  ),
                                                  Positioned.fill(
                                                      right: -10,
                                                      bottom: -5,
                                                      child: Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Container(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10.0),
                                                          decoration: BoxDecoration(
                                                              color: AppColor
                                                                  .GREEN_COLOR,
                                                              shape: BoxShape
                                                                  .circle),
                                                          child: Text(
                                                            '5%',
                                                            style: AppFont
                                                                .TINY_POPPINS_MEDIUM
                                                                .copyWith(
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                        ),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            WidgetSpacer(height: 10.0),
                                            Text('323232 votes',
                                                style: TextStyling
                                                    .BROWN_TINY_POPINS),
                                            Text(
                                              '323232 feedbacks',
                                              style:
                                                  AppFont.SMALL_POPPINS_MEDIUM,
                                            ),
                                          ],
                                        ),
                                      ),
                                      WidgetSpacer(width: 15.0),
                                      Flexible(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: <Widget>[
                                            Text(
                                              'Zean Ronen',
                                              style: TextStyling
                                                  .DARK_POPPINS_SEMI_BOLD,
                                            ),
                                            WidgetSpacer(height: 5.0),
                                            Container(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: AppColor
                                                          .LIGHT_GREY),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              4.0))),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                      'MBBS,DOMS,MS - Ophthalmology',
                                                      style: TextStyling
                                                          .LIGHT_BROWN_TINY_POPINS),
                                                  Text('Ophthalmologist',
                                                      style: TextStyling
                                                          .LIGHT_BROWN_TINY_POPINS),
                                                  Text('26 years of experience',
                                                      style: TextStyling
                                                          .LIGHT_BROWN_TINY_POPINS),
                                                ],
                                              ),
                                            ),
                                            WidgetSpacer(height: 5.0),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.location_on,
                                                  color: AppColor.DEFAULT_COLOR,
                                                  size: 18.0,
                                                ),
                                                Text(
                                                  'Andheri East',
                                                  style: AppFont.SMALL_POPPINS.copyWith(color: AppColor.BROWN_COLOR),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                RoundedOutlineButton(
                                  onPress: () {
                                    print('call clinic');
                                  },
                                  height: 35.0,
                                  buttonLabel: StringConstant.CONTACT_CLINIC,
                                  buttonLabelStyle: AppFont
                                      .SMALL_POPPINS_SEMI_BOLD
                                      .copyWith(color: AppColor.DEFAULT_COLOR),
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
            )
          ],
        ),
      ),
    );
  }

  _buildHeader(String title) => SearchResultHeader(headerTitle: title);
}
