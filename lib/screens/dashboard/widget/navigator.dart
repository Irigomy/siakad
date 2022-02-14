import 'package:flutter/material.dart';
import 'package:simak/screens/home_screen/home.dart';
import 'package:simak/screens/info/info.dart';
import 'package:simak/screens/kalender/kalender.dart';
import 'package:simak/screens/present/present.dart';
import 'bottombar.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabItem});
  final GlobalKey<NavigatorState>? navigatorKey;
  final TabItem tabItem;

  void _push(BuildContext context, {int materialIndex: 500}) {
    var routeBuilders = _routeBuilders(context, materialIndex: materialIndex);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            routeBuilders[TabNavigatorRoutes.detail]!(context),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {int materialIndex: 500}) {
    return {
      TabNavigatorRoutes.root: (context) => ColorDetailPage(
            page: tabName[tabItem]!,
          ),
      TabNavigatorRoutes.detail: (context) => Kalender(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name!]!(context),
        );
      },
    );
  }
}

class ColorDetailPage extends StatelessWidget {
  ColorDetailPage({required this.page});
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: page);
  }
}
