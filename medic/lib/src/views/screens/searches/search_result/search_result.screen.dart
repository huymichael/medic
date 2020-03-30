import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medic/src/shared/widgets/screen_header.widget.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/shared/widgets/therapist_card.widget.dart';
import 'package:medic/src/utils/constant/images.const.dart';
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
                  margin: const EdgeInsets.only(bottom: 15.0),
                  child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          WidgetSpacer(height: 10.0),
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return TherapistCard(
                          imgURL: ImageConstant.CORONA,
                          therapistName: 'Zean Ronen',
                          therapistCer: 'MBBS,DOMS,MS - Ophthalmology',
                          therapistSpecialty: 'Ophthalmologist',
                          therapistYearExps: 26,
                          address: 'Andheri East',
                          voteNumber: 45,
                          feedbackNumber: 231,
                          rating: 78,
                          onPress: () {},
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
