import 'package:flutter/material.dart';
import 'package:simak/screens/dashboard/dashboard.dart';
import 'package:simak/utils/sizer.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    GetSize().init(context);
    return Scaffold(
        floatingActionButton: InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              builder: (BuildContext context) {
                return SizedBox(
                  child: Column(
                    children: [
                      SizedBox(
                        height: getHeight(30),
                      ),
                      SizedBox(
                        height: getHeight(30),
                        child: Text("Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: getwidth(16),
                            )),
                      ),
                      SizedBox(
                        height: getHeight(30),
                      ),
                      Container(
                          height: getHeight(50),
                          width: getwidth(260),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(0.0, 1.0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(getwidth(10)),
                            color: Colors.white,
                          )),
                      SizedBox(
                        height: getHeight(10),
                      ),
                      Container(
                          height: getHeight(50),
                          width: getwidth(260),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(0.0, 1.0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(getwidth(10)),
                            color: Colors.white,
                          )),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      SizedBox(
                        height: getHeight(20),
                      ),
                      InkWell(
                        onTap: () {
                          //navigate to new screen without bottom bar
                          Navigator.pop(context);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const Dashboard(),
                            ),
                          );
                        },
                        child: Container(
                            width: getwidth(260),
                            height: getHeight(50),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(getwidth(10)),
                                color: const Color(0xFFF5A05D)),
                            child: Center(
                              child: Text("Masuk",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getwidth(12),
                                  )),
                            )),
                      )
                    ],
                  ),
                );
              },
            );
          },
          child: Container(
              height: getHeight(50),
              width: getwidth(160),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0.0, 1.0),
                  ),
                ],
                borderRadius: BorderRadius.circular(getwidth(24)),
                color: Colors.white,
              ),
              child: Center(
                child: Text("Mulai",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: getwidth(16),
                    )),
              )),
        ),
        body: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowIndicator();
              return true;
            },
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: getHeight(720),
                    width: getwidth(380),
                    child: Image.asset(
                      'assets/images/onboarding.png',
                      fit: BoxFit.fitWidth,
                    ),
                  )
                ],
              ),
            )));
  }
}
