import 'package:flutter/material.dart';
import 'package:simak/screens/home_screen/setting.dart';
import 'package:simak/screens/info/info.dart';
import 'package:simak/screens/kalender/kalender.dart';
import 'package:simak/utils/sizer.dart';
import 'package:simak/utils/transition.dart';

class Home extends StatefulWidget {
  static String route = 'Home';
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    GetSize().init(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SizedBox(
            height: getHeight(40),
            width: getwidth(60),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, SlideRoute(route: Setting.route, page: Info()));
                },
                child: const Icon(Icons.send)),
          ),
        ));
  }
}
