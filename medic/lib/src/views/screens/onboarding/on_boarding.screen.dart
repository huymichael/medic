import 'package:flutter/material.dart';
import 'package:medic/src/utils/constant/string.const.dart';
import 'package:medic/src/utils/constant/style.const.dart';
import 'package:medic/src/utils/routes/route.dart';
import 'package:medic/src/utils/theme/app_color.dart';
import 'package:medic/src/views/screens/login/login.screen.dart';
import 'package:medic/src/views/screens/onboarding/widgets/first_onboard.screen.dart';
import 'package:medic/src/views/screens/onboarding/widgets/second_onboard.screen.dart';
import 'package:medic/src/views/screens/onboarding/widgets/third_onboard.screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _onBoardingList = [
    FirstOnBoardScreen(),
    SecondOnBoardScreen(),
    ThirdOnBoardScreen(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _currentPage != _onBoardingList.length - 1
          ? Container()
          : FloatingActionButton(
              child: Icon(Icons.arrow_forward),
              onPressed: () {
                Routing().navigateTo(context, LoginScreen());
              },
              backgroundColor: AppColor.DEFAULT_COLOR,
              shape: BeveledRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(28)),
              ),
            ),
      body: Stack(
        children: <Widget>[
          PageView.builder(
              controller: _pageController,
              physics: ClampingScrollPhysics(),
              itemCount: _onBoardingList.length,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              itemBuilder: (context, index) {
                return _onBoardingList[index];
              }),
          Container(
            height: 70,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: InkWell(
                  onTap: () {
                    Routing().navigateTo(context, LoginScreen());
                  },
                  child: Container(
                    child: Text(
                      StringConstant.SKIP,
                      style: Styling.SKIP_ON_BOARD,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> listIndicator = [];
    for (int i = 0; i < _onBoardingList.length; i++) {
      listIndicator
          .add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return listIndicator;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? AppColor.DEFAULT_COLOR : AppColor.BROWN_COLOR,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
