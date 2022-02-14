import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simak/screens/home_screen/setting.dart';
import 'package:simak/screens/kalender/kalender.dart';
import 'package:simak/screens/khs/khs.dart';
import 'package:simak/screens/krs/krs.dart';
import 'package:simak/screens/present/widget/insert_token.dart';
import 'package:simak/screens/present/widget/notif.dart';
import 'package:simak/utils/sizer.dart';
import 'package:simak/utils/transition.dart';

class Present extends StatefulWidget {
  const Present({Key? key}) : super(key: key);

  @override
  _PresentState createState() => _PresentState();
}

class _PresentState extends State<Present> {
  double loginWidth = getHeight(70.0);
  double beback = getHeight(220);
  bool isOpen = false;
  double width = 0, height = 0;
  double left = 0, bottom = getHeight(160);
  @override
  Widget build(BuildContext context) {
    GetSize().init(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
            top: 0,
            child: Column(children: [
              Container(
                height: getHeight(185),
                width: getwidth(360),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0XFF3DD096),
                      Color(0XFF6EE07F),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: getHeight(60)),
                    SizedBox(
                      height: getHeight(53),
                      width: getwidth(320),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: getwidth(200),
                                  height: getHeight(35),
                                  child: Text(
                                    "Hey George Hotz",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: getwidth(24),
                                    ),
                                  )),
                              Text(
                                "Pake Masker yaa... ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: getwidth(12),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: getwidth(10),
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                useRootNavigator: true,
                                isScrollControlled: true,
                                enableDrag: false,
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                                builder: (context) => SizedBox(
                                    height: getHeight(600),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: getwidth(173)),
                                          child: Container(
                                            height: getHeight(15),
                                            width: getwidth(20),
                                            color: Colors.transparent,
                                            child: SvgPicture.asset(
                                              "assets/Icons/base.svg",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: getHeight(582),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft:
                                                  Radius.circular(getwidth(20)),
                                              topRight:
                                                  Radius.circular(getwidth(20)),
                                            ),
                                          ),
                                          child: const Notif(),
                                        ),
                                      ],
                                    )),
                              );
                            },
                            child: SizedBox(
                              height: getHeight(40),
                              width: getwidth(32),
                              child: Center(
                                child: SizedBox(
                                    height: getHeight(25),
                                    width: getwidth(17),
                                    child: SvgPicture.asset(
                                      "assets/Icons/notif.svg",
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                              height: getHeight(50),
                              width: getwidth(50),
                              child: CircleAvatar(
                                radius: 10.0,
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/user.png',
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: getHeight(480),
                width: getwidth(360),
                color: const Color(0xFFF5F8FF),
                child: Column(
                  children: [
                    SizedBox(
                      height: getHeight(48),
                    ),
                    Container(
                      width: getwidth(320),
                      height: getHeight(100),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(getwidth(10)),
                        color: const Color(0xFF393E6D),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              right: 0,
                              bottom: getHeight(29),
                              child: Container(
                                width: getwidth(71),
                                height: getHeight(84),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(getHeight(10)),
                                  ),
                                  color: Colors.white.withOpacity(0.1),
                                ),
                              )),
                          Positioned(
                              left: getwidth(311),
                              bottom: getHeight(45),
                              child: Container(
                                width: getwidth(29),
                                height: getHeight(35),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(getHeight(10)),
                                    topLeft: Radius.circular(getHeight(10)),
                                  ),
                                  color: Colors.white.withOpacity(0.1),
                                ),
                              )),
                          Positioned(
                              right: getwidth(42),
                              bottom: getHeight(83),
                              child: Container(
                                width: getwidth(44),
                                height: getHeight(50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(getHeight(10)),
                                    bottomRight: Radius.circular(getHeight(10)),
                                  ),
                                  color: Colors.white.withOpacity(0.1),
                                ),
                              )),
                          Positioned(
                            left: getwidth(20),
                            bottom: getHeight(15),
                            right: getwidth(20),
                            top: getHeight(18),
                            child: SizedBox(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: getHeight(17),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Wrap(
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.circle,
                                                  color: Colors.green,
                                                  size: 10,
                                                ),
                                                SizedBox(
                                                  width: getwidth(5),
                                                ),
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      "Kelas berlangsung",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: getwidth(12),
                                                      ),
                                                    )),
                                              ],
                                            ),
                                            Text(
                                              "08.00-10.00",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: getwidth(12),
                                              ),
                                            )
                                          ],
                                        )),
                                    SizedBox(height: getHeight(7)),
                                    SizedBox(
                                        height: getHeight(20),
                                        width: getwidth(160),
                                        child: Text(
                                          "Convolution Neural Network",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: getwidth(16),
                                          ),
                                        )),
                                    SizedBox(height: getHeight(6)),
                                    SizedBox(
                                        height: getHeight(17),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Center(
                                                child: Text(
                                              "Ruang 2",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: getwidth(12),
                                              ),
                                            )),
                                          ],
                                        )),
                                  ]),
                            ),
                          ),
                          Positioned(
                              right: getwidth(20),
                              bottom: getHeight(20),
                              child: InkWell(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (_) => FunkyOverlay(),
                                    );
                                  },
                                  child: Container(
                                    width: getwidth(100),
                                    height: getHeight(30),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(getwidth(40)),
                                        color: Colors.white),
                                    child: Center(
                                      child: Wrap(
                                        crossAxisAlignment:
                                            WrapCrossAlignment.center,
                                        children: [
                                          Text(
                                            "Presensi",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: getwidth(12),
                                            ),
                                          ),
                                          SizedBox(
                                            width: getwidth(8.38),
                                          ),
                                          Transform(
                                            alignment: Alignment.center,
                                            transform:
                                                Matrix4.rotationY(math.pi),
                                            child: Icon(
                                              Icons.arrow_back,
                                              color: Colors.black,
                                              size: getwidth(12),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getHeight(52),
                      width: getwidth(320),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Kuliah Berikutnya",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: getwidth(18),
                            ),
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Selengkapnya",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: getwidth(12),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getwidth(8.38),
                              ),
                              Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(math.pi),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                  size: getwidth(12),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getHeight(273),
                      width: getwidth(320),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.only(
                            top: getwidth(3), left: getwidth(3)),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.only(bottom: getHeight(10)),
                              child: Container(
                                alignment: Alignment.center,
                                height: getHeight(82),
                                width: getwidth(360),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(
                                          width: getwidth(50),
                                          height: getHeight(41),
                                          child: Center(
                                            child: Text(
                                              "08:00",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: getwidth(12),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: getwidth(50),
                                          height: getHeight(41),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        width: getwidth(265),
                                        height: getHeight(82),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              getwidth(10)),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset: const Offset(0.0, 1.0),
                                            ),
                                          ],
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: SizedBox(
                                            height: getHeight(82),
                                            width: getwidth(250),
                                            child: Column(
                                              children: [
                                                SizedBox(height: getHeight(18)),
                                                SizedBox(
                                                    height: getHeight(18),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Text(
                                                        "Neural Network",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize:
                                                              getwidth(14),
                                                        ),
                                                      ),
                                                    )),
                                                SizedBox(
                                                  height: getHeight(11),
                                                ),
                                                SizedBox(
                                                    height: getHeight(14),
                                                    child: Row(
                                                      children: [
                                                        Wrap(
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              LineIcons.clock,
                                                              color:
                                                                  Colors.black,
                                                              size:
                                                                  getwidth(12),
                                                            ),
                                                            SizedBox(
                                                              width:
                                                                  getwidth(6),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text(
                                                                "08.00 - 10.00",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      getwidth(
                                                                          12),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                            width:
                                                                getwidth(22)),
                                                        Wrap(
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              LineIcons.home,
                                                              color:
                                                                  Colors.black,
                                                              size:
                                                                  getwidth(12),
                                                            ),
                                                            SizedBox(
                                                              width:
                                                                  getwidth(6),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Text(
                                                                "lab 2",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      getwidth(
                                                                          12),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                            width:
                                                                getwidth(21)),
                                                      ],
                                                    ))
                                              ],
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ));
                        },
                      ),
                    )
                  ],
                ),
              )
            ])),
        Positioned(
            top: getHeight(133),
            child: Container(
                width: getwidth(320),
                height: getHeight(80),
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
                ),
                child: Center(
                  child: SizedBox(
                    height: getHeight(40),
                    width: getwidth(280),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                SlideRoute(
                                    route: Setting.route,
                                    page: const Kalender()));
                          },
                          child: Container(
                              width: getwidth(80),
                              height: getHeight(40),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0.1,
                                    blurRadius: 0.1,
                                    offset: const Offset(0.0, 1.0),
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.circular(getwidth(10)),
                                color: const Color(0xFFF5F8FF),
                              ),
                              child: Center(
                                child: SizedBox(
                                  height: getHeight(25),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: getwidth(8.75),
                                      ),
                                      SizedBox(
                                        height: getHeight(25),
                                        width: getwidth(22.5),
                                        child: SvgPicture.asset(
                                          "assets/Icons/calendar.svg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: getwidth(5.75),
                                      ),
                                      Text(
                                        "Kalender",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: getwidth(8),
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SlideRoute(
                                      route: Setting.route, page: const Krs()));
                            },
                            child: Container(
                                width: getwidth(80),
                                height: getHeight(40),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0.1,
                                      blurRadius: 0.1,
                                      offset: const Offset(0.0, 1.0),
                                    ),
                                  ],
                                  borderRadius:
                                      BorderRadius.circular(getwidth(10)),
                                  color: const Color(0xFFF5F8FF),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    height: getHeight(25),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: getwidth(8.75),
                                        ),
                                        SizedBox(
                                          height: getHeight(25),
                                          width: getwidth(22.5),
                                          child: SvgPicture.asset(
                                            "assets/Icons/paper.svg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                          width: getwidth(5.75),
                                        ),
                                        Text(
                                          "KRS",
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: getwidth(8),
                                          )),
                                        )
                                      ],
                                    ),
                                  ),
                                ))),
                        InkWell(
                          onTap: () {
                             Navigator.push(
                                  context,
                                  SlideRoute(
                                      route: Setting.route, page: const Khs()));
                          },
                          child: Container(
                              width: getwidth(80),
                              height: getHeight(40),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0.1,
                                    blurRadius: 0.1,
                                    offset: const Offset(0.0, 1.0),
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.circular(getwidth(10)),
                                color: const Color(0xFFF5F8FF),
                              ),
                              child: Center(
                                child: SizedBox(
                                  height: getHeight(25),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: getwidth(8.75),
                                      ),
                                      SizedBox(
                                        height: getHeight(25),
                                        width: getwidth(22.5),
                                        child: SvgPicture.asset(
                                          "assets/Icons/activity.svg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: getwidth(5.75),
                                      ),
                                      Text(
                                        "KHS",
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: getwidth(8),
                                        )),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ))),
        Positioned(
          right: getwidth(83),
          top: getHeight(72),
          child: Container(
            width: getwidth(10),
            height: getwidth(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(getwidth(40)),
                color: Colors.red),
            child: Center(
              child: Text(
                "3",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getwidth(6),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
