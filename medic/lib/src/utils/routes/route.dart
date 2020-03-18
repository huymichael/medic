import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routing {
  navigateTo(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }
}
