import 'package:flutter/material.dart';
import 'package:simak/utils/sizer.dart';

class Setting extends StatefulWidget {
  static String route = "Setting";
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {
                  Navigator.pushNamed(context, "Home");
                },
                child: const Icon(Icons.send)),
          ),
        ));
  }
}
