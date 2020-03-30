import 'package:flutter/material.dart';
import 'package:medic/src/shared/widgets/screen_header.widget.dart';
import 'package:medic/src/shared/widgets/spacer.widget.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/routes/route.dart';
import 'package:medic/src/utils/theme/app_font.dart';
import 'package:medic/src/views/screens/searches/search_result/search_result.screen.dart';
import 'package:medic/src/views/screens/searches/specialty_search/widgets/search_specialty_header.widget.dart';

class SearchSpecialtyScreen extends StatefulWidget {
  SearchSpecialtyScreen({@required this.specialty});

  final String specialty;

  @override
  _SearchSpecialtyScreenState createState() => _SearchSpecialtyScreenState();
}

class _SearchSpecialtyScreenState extends State<SearchSpecialtyScreen> {
  List<String> _listSpecialities = [
    'Ophthalmologist',
    'Dermatologist',
    'Cardiologist',
    'Gastroenterologist',
    'Psychiatrist',
    'Ear-Nose-Throat (ENT) Specialist',
    'Gynecologist/Obstetrician',
    'Neurologist'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ScreenHeader(child: _buildHeader(widget.specialty)),
          WidgetSpacer(height: 40.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              StringConstant.TOP_SPECIALTY,
              style: AppFont.POPPINS_SEMI_BOLD,
            ),
          ),
          WidgetSpacer(height: 10.0),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(),
                  physics: BouncingScrollPhysics(),
                  itemCount: _listSpecialities.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      dense: true,
                      title: Text(
                        _listSpecialities[index],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      onTap: () {
                        Routing().navigateTo(
                            context,
                            SearchResultScreen(
                              headerTitle: _listSpecialities[index],
                            ));
                      },
                    );
                  }),
            ),
          )
        ],
      )),
    );
  }

  _buildHeader(String specialtyName) =>
      SpecialtySearchHeader(specialtyName: specialtyName);
}
