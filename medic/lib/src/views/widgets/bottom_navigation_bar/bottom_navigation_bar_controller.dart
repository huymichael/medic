import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic/src/views/screens/account/account.screen.dart';
import 'package:medic/src/views/screens/home/home.screen.dart';

class BottomNavigationBarController extends StatefulWidget {
  @override
  _BottomNavigationBarControllerState createState() =>
      _BottomNavigationBarControllerState();
}

class _BottomNavigationBarControllerState
    extends State<BottomNavigationBarController> {
  final List<Widget> pages = [
    HomeScreen(key: PageStorageKey('home')),
    AccountScreen(key: PageStorageKey('account'))
  ];
  final PageStorageBucket storageBucket = PageStorageBucket();
  int _currentTab = 0;
  Widget _currentPage;

  @override
  void initState() {
    _currentPage = pages[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(_currentTab),
      body: PageStorage(
        child: pages[_currentTab],
        bucket: storageBucket,
      ),
    );
  }

  Widget _buildBottomNavigationBar(int currentPage) => ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        child: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Account')),
          ],
          currentIndex: _currentTab,
          onTap: (int index) {
            setState(() {
              _currentTab = index;
              _currentPage = pages[index];
            });
          },
        ),
      );
}
