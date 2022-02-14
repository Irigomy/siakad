import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simak/screens/bio/bio.dart';
import 'package:simak/utils/sizer.dart';
import 'dart:math' as math;

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

final List<String> _menu = [
  "Ubah Sandi",
  "Biodata",
  "Dark mode",
  "Hubungi Administrasi",
  "Hubungi Akademik"
];

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    GetSize().init(context);
    return Stack(children: [
      Column(children: [
        Container(
            height: getHeight(100),
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0XFF3DD096),
                  Color(0XFF6EE07F),
                ],
              ),
            ))
      ]),
      Positioned(
          top: getHeight(30),
          left: getwidth(20),
          right: getwidth(20),
          child: Column(children: [
            Container(
              height: getHeight(396),
              width: getwidth(320),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.1,
                    blurRadius: 0.1,
                    offset: const Offset(0.0, 1.0),
                  ),
                ],
                borderRadius: BorderRadius.circular(getwidth(10)),
                color: const Color(0xFFF5F8FF),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: getHeight(18),
                  ),
                  Container(
                    height: getwidth(125),
                    width: getwidth(125),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                        'assets/images/user.png',
                      )),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.1,
                          blurRadius: 0.1,
                          offset: const Offset(0.0, 1.0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(getwidth(10)),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(22),
                  ),
                  Text("George Hotz",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: getwidth(18),
                      )),
                  SizedBox(
                    height: getHeight(10),
                  ),
                  Text("1212128",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: getwidth(12),
                      )),
                  SizedBox(
                    height: getHeight(20),
                  ),
                  SizedBox(
                    height: getHeight(72),
                    width: getwidth(320),
                    child: Column(children: [
                      Row(
                        children: [
                          SizedBox(
                            width: getwidth(28),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: getHeight(20)),
                            child: SizedBox(
                              height: getHeight(12),
                              child: SvgPicture.asset(
                                "assets/Icons/birth.svg",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: getwidth(21),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tempat, tanggal lahir",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getwidth(10),
                                  )),
                              Text("Yogyakarta, 12 Desember 2001",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getwidth(12),
                                  )),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: getHeight(8),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: getwidth(28),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: getHeight(20)),
                            child: SizedBox(
                              height: getHeight(12),
                              child: SvgPicture.asset(
                                "assets/Icons/edit.svg",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: getwidth(21),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Prodi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getwidth(10),
                                  )),
                              Text("Informatika",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getwidth(12),
                                  )),
                            ],
                          )
                        ],
                      )
                    ]),
                  ),
                  SizedBox(
                    height: getHeight(29),
                  ),
                  SizedBox(
                      height: getHeight(24),
                      width: getwidth(320),
                      child: Padding(
                        padding: EdgeInsets.only(left: getwidth(222)),
                        child: Row(
                          children: [
                            Container(
                              width: getHeight(24),
                              height: getwidth(24),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(getwidth(7)),
                                  color: const Color(0xFFA6DFFF)),
                            ),
                            SizedBox(
                              width: getwidth(20),
                            ),
                            Container(
                              width: getHeight(24),
                              height: getwidth(24),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(getwidth(7)),
                                  color: const Color(0xFFA6DFFF)),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: getHeight(10),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (_) => const Bio(),
                  ),
                );
              },
              child: Container(
                  height: getHeight(53),
                  width: getwidth(320),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.1,
                        blurRadius: 0.1,
                        offset: const Offset(0.0, 1.0),
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(getHeight(20)),
                      topRight: Radius.circular(getHeight(20)),
                    ),
                    color: const Color(0xFFF5F8FF),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: getwidth(18), right: getwidth(18)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                            child: SizedBox(
                                child: Text("Biodata",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: getwidth(14),
                                    )))),
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
                  )),
            ),
            const Divider(
              color: Colors.white,
              height: 1,
            ),
            Container(
                height: getHeight(53),
                width: getwidth(320),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.1,
                      blurRadius: 0.1,
                      offset: const Offset(0.0, 1.0),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(getHeight(20)),
                    bottomRight: Radius.circular(getHeight(20)),
                  ),
                  color: const Color(0xFFF5F8FF),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: getwidth(18), right: getwidth(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                          child: SizedBox(
                              child: Text("Hubungi Akademik",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getwidth(14),
                                  )))),
                      InkWell(
                          onTap: () {},
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(math.pi),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: getwidth(12),
                            ),
                          ))
                    ],
                  ),
                )),
            SizedBox(
              height: getHeight(10),
            ),
            Container(
                height: getHeight(53),
                width: getwidth(320),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0.1,
                      blurRadius: 0.1,
                      offset: const Offset(0.0, 1.0),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getHeight(20)),
                    topRight: Radius.circular(getHeight(20)),
                  ),
                  color: const Color(0xFFF5F8FF),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: getwidth(18), right: getwidth(18)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                          child: SizedBox(
                              child: Text("Ganti Password",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getwidth(14),
                                  )))),
                      InkWell(
                          onTap: () {},
                          child: Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(math.pi),
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: getwidth(12),
                            ),
                          ))
                    ],
                  ),
                )),
            const Divider(
              color: Colors.white,
              height: 1,
            ),
            Container(
              height: getHeight(53),
              width: getwidth(320),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.1,
                    blurRadius: 0.1,
                    offset: const Offset(0.0, 1.0),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(getHeight(20)),
                  bottomRight: Radius.circular(getHeight(20)),
                ),
                color: const Color(0xFFF5F8FF),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(left: getwidth(18), right: getwidth(18)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                        child: SizedBox(
                            child: Text("Logout",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: getwidth(14),
                                )))),
                    InkWell(
                        onTap: () {},
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: getwidth(12),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ]))
    ]);
  }
}
