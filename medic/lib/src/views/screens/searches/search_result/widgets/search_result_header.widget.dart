import 'package:flutter/material.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/constant/text_style.const.dart';
import 'package:medic/src/utils/constant/widget_style.const.dart';
import 'package:medic/src/utils/theme/app_color.dart';
import 'package:medic/src/utils/theme/app_font.dart';

class SearchResultHeader extends StatelessWidget {
  SearchResultHeader({this.headerTitle});

  final String headerTitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      fit: StackFit.expand,
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Flexible(
                child: Text(
                  headerTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyling.WHITE_INCREASED_MONT_BOLD,
                ),
              )
            ],
          ),
        ),
//        Positioned.fill(
//          bottom: -20,
//          child: Align(
//            alignment: Alignment.bottomCenter,
//            child: Container(
//              height: 45.0,
//              padding: EdgeInsets.symmetric(horizontal: 35.0),
//              child: TextFormField(
//                maxLines: 1,
//                decoration: WidgetStyling.WHITE_HEADER_SEARCH.copyWith(
//                    prefixIcon: Icon(
//                      Icons.search,
//                      color: AppColor.VERY_LIGHT_GREY,
//                    ),
//                    hintStyle: AppFont.POPPINS_ITALIC
//                        .copyWith(color: AppColor.VERY_LIGHT_GREY),
//                    hintText: StringConstant.SEARCH_DOCTOR_HINT),
//              ),
//            ),
//          ),
//        )
      ],
    );
  }
}
