import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/constant/text_style.const.dart';
import 'package:medic/src/utils/theme/app_color.dart';

class ShareFriendCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'assets/images/img/discount.png',
            ),
            Divider(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Text(
                    StringConstant.SHARE_CODE,
                    maxLines: 2,
                    softWrap: true,
                    style: TextStyling.POPPINS_SEMI_BOLD_12
                        .copyWith(color: AppColor.DARK_COLOR_1),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: TextFormField(
                    enabled: false,
                    initialValue: 'NHDFG',
                    style: TextStyling.BROWN_REGULAR_TEXT_15,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.share),
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)))),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
