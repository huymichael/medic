import 'package:flutter/material.dart';
import 'package:medic/src/shared/widgets/screen_header.widget.dart';
import 'package:medic/src/views/screens/search_doctor/widgets/search_doctor_header.widget.dart';

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
          ScreenHeader(
            child: _buildSearchHeader(),
          )
        ],
      ),
    );
  }

  _buildSearchHeader() => SearchDoctorHeader();
}
