import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic/src/shared/widgets/screen_header.widget.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/constant/text_style.const.dart';
import 'package:medic/src/utils/routes/route.dart';
import 'package:medic/src/utils/theme/app_font.dart';
import 'package:medic/src/views/screens/searches/doctor_search/widgets/search_doctor_header.widget.dart';
import 'package:medic/src/views/screens/searches/specialty_search/search_specialty.screen.dart';

class SearchDoctorScreen extends StatefulWidget {
  @override
  _SearchDoctorScreenState createState() => _SearchDoctorScreenState();
}

class _SearchDoctorScreenState extends State<SearchDoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ScreenHeader(child: _buildSearchHeader()),
          WidgetSpacer(height: 40.0),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 28.0, vertical: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        Routing().navigateTo(
                            context,
                            SearchSpecialtyScreen(
                              specialty: 'Doctors',
                            ));
                      },
                      title: Text('Doctors', style: AppFont.POPPINS_SEMI_BOLD),
                      subtitle: Text('Ophthalmologist, Dermatologist, etc.',
                          style: TextStyling.BROWN_TINY_POPINS),
                    ),
                    Divider(),
                    ListTile(
                      onTap: () {
                        Routing().navigateTo(
                            context,
                            SearchSpecialtyScreen(
                              specialty: 'Dentists',
                            ));
                      },
                      title: Text('Dentists', style: AppFont.POPPINS_SEMI_BOLD),
                      subtitle: Text('Dentist, Prosthodontist, etc.',
                          style: TextStyling.BROWN_TINY_POPINS),
                    ),
                    Divider(),
                    ListTile(
                      onTap: () {
                        Routing().navigateTo(
                            context,
                            SearchSpecialtyScreen(
                              specialty: 'Alternative Medicine Doctors',
                            ));
                      },
                      title: Text('Alternative Medicine Doctors',
                          style: AppFont.POPPINS_SEMI_BOLD),
                      subtitle: Text('Ayurveda, Homeopath, etc.',
                          style: TextStyling.BROWN_TINY_POPINS),
                    ),
                    Divider(),
                    ListTile(
                      onTap: () {
                        Routing().navigateTo(
                            context,
                            SearchSpecialtyScreen(
                                specialty: 'Therapists & Nutritionists'));
                      },
                      title: Text('Therapists & Nutritionists',
                          style: AppFont.POPPINS_SEMI_BOLD),
                      subtitle: Text('Acupuncturist, Physiotherapist, etc.',
                          style: TextStyling.BROWN_TINY_POPINS),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildSearchHeader() => SearchDoctorHeader();
}
