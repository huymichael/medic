import 'package:flutter/material.dart';
import 'package:medic/src/utils/theme/app_theme.dart';
import 'package:medic/src/views/screens/login/login.screen.dart';
import 'package:medic/src/views/screens/onboarding/on_boarding.screen.dart';
import 'package:medic/src/views/screens/splash/splash.screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.customTheme, home: LoginScreen());
  }
}
