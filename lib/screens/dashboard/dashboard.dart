import 'package:flutter/material.dart';
import 'package:simak/screens/account/account.dart';
import 'package:simak/screens/dashboard/widget/bottombar.dart';
import 'package:simak/screens/dashboard/widget/navigator.dart';
import 'package:simak/screens/info/info.dart';
import 'package:simak/screens/present/present.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _currentTab = TabItem.home;

  final _navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.jadwal: GlobalKey<NavigatorState>(),
    TabItem.account: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final isFirstRouteInCurrentTab =
              !await _navigatorKeys[_currentTab]!.currentState!.maybePop();
          if (isFirstRouteInCurrentTab) {
            if (_currentTab != TabItem.home) {
              _selectTab(TabItem.home);
              return false;
            }
          }

          return isFirstRouteInCurrentTab;
        },
        child: Scaffold(
            bottomNavigationBar: BottomNavigation(
              currentTab: _currentTab,
              onSelectTab: _selectTab,
            ),
            backgroundColor: const Color(0xffF5F8FF),
            body: Stack(children: <Widget>[
              _buildOffstageNavigator(TabItem.home),
              _buildOffstageNavigator(TabItem.jadwal),
              _buildOffstageNavigator(TabItem.account),
            ])));
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}
