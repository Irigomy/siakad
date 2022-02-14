import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simak/screens/home_screen/setting.dart';
import 'package:simak/screens/khs/widget/kshsemester.dart';
import 'package:simak/screens/khs/widget/rectangular.dart';
import 'package:simak/utils/sizer.dart';
import 'package:simak/utils/transition.dart';

class Khs extends StatefulWidget {
  const Khs({Key? key}) : super(key: key);

  @override
  _KhsState createState() => _KhsState();
}

class _KhsState extends State<Khs> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    GetSize().init(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color(0xFFF5F8FF),
      child: Column(
        children: [
          SizedBox(
            height: getHeight(30),
          ),
          SizedBox(
            height: getHeight(30),
            width: getwidth(320),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                      size: getwidth(25),
                    )),
                Center(
                    child: SizedBox(
                        child: Text("Kartu hasil studi",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: getwidth(18),
                            )))),
                InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.circle,
                      color: Colors.transparent,
                      size: getwidth(30),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: getHeight(75),
            width: getwidth(220),
            child: TabBar(
              physics: const BouncingScrollPhysics(),
              controller: _tabController,
              indicator: RectangularIndicator(
                  paintingStyle: PaintingStyle.fill,
                  topRightRadius: getwidth(10),
                  topLeftRadius: getwidth(10),
                  bottomRightRadius: getwidth(10),
                  bottomLeftRadius: getwidth(10),
                  verticalPadding: getwidth(20),
                  color: const Color(0xFFF5A05D),
                  horizontalPadding: getHeight(20)),
              tabs: [
                Container(
                    width: getwidth(100),
                    height: getHeight(30),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xffEDF2FF).withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0.0, 1.0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(getwidth(10)),
                    ),
                    child: Center(
                      child: Text("Semester",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: getwidth(10),
                          )),
                    )),
                Container(
                    width: getwidth(100),
                    height: getHeight(30),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: const Color(0xffEDF2FF).withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0.0, 1.0),
                      ),
                    ], borderRadius: BorderRadius.circular(getwidth(10))),
                    child: Center(
                      child: Text("Kumulatif",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: getwidth(10),
                          )),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: getHeight(528),
            width: getwidth(360),
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
              controller: _tabController, children: [
              ListView.builder(
                  padding: EdgeInsets.only(top: getHeight(10)),
                  physics: const BouncingScrollPhysics(),
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.only(bottom: getHeight(5)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                SlideRoute(
                                    route: Setting.route,
                                    page: const khsSemester()));
                          },
                          child: Container(
                            height: getHeight(80),
                            width: getwidth(360),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0.1,
                                  blurRadius: 0.2,
                                  offset: const Offset(0.1, 0.1),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ));
                  }),
              Column(
                children: [
                  Container(
                      height: getHeight(150),
                      width: getwidth(320),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(getwidth(10)),
                        color: const Color(0xFF393E6D),
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0XFF6EE07F),
                            Color(0XFF3DD096),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                          getwidth(20),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: getHeight(50),
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("Semester 7",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: getwidth(12),
                                        )),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getHeight(30),
                                        width: getwidth(100),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              getwidth(10)),
                                          color: const Color(0xFF15A761)
                                              .withOpacity(0.3),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: getHeight(6),
                                              bottom: getHeight(6),
                                              left: getwidth(12),
                                              right: getwidth(12)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SvgPicture.asset(
                                                "assets/Icons/download.svg",
                                                height: getHeight(14),
                                                width: getwidth(13),
                                              ),
                                              Text("Cetak PDF",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: getwidth(12),
                                                  ))
                                            ],
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getHeight(50),
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: double.infinity,
                                    width: getwidth(66),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("527",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getwidth(22),
                                            )),
                                        Text("Credit score",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getwidth(12),
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: double.infinity,
                                    width: getwidth(76),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("140",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getwidth(22),
                                            )),
                                        Text("SKS Semester",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getwidth(12),
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: double.infinity,
                                    width: getwidth(66),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("3.76",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getwidth(22),
                                            )),
                                        Text("IP Semester",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getwidth(12),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                  SizedBox(height: getHeight(10)),
                  SizedBox(
                    height: getHeight(30),
                    width: getwidth(320),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: getwidth(20),
                          right: getwidth(20),
                          top: getHeight(9),
                          bottom: getHeight(9)),
                      child: Row(
                        children: [
                          Text("Mata Kuliah",
                              style: TextStyle(
                                color: const Color(0xff8F91AC),
                                fontWeight: FontWeight.w400,
                                fontSize: getwidth(10),
                              )),
                          SizedBox(
                            width: getwidth(92),
                          ),
                          Text("SKS (K)",
                              style: TextStyle(
                                color: const Color(0xff8F91AC),
                                fontWeight: FontWeight.w400,
                                fontSize: getwidth(10),
                              )),
                          SizedBox(
                            width: getwidth(20),
                          ),
                          Text("Nilai (N)",
                              style: TextStyle(
                                color: const Color(0xff8F91AC),
                                fontWeight: FontWeight.w400,
                                fontSize: getwidth(10),
                              )),
                          SizedBox(
                            width: getwidth(20),
                          ),
                          Text("K x N",
                              style: TextStyle(
                                color: const Color(0xff8F91AC),
                                fontWeight: FontWeight.w400,
                                fontSize: getwidth(10),
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getHeight(338),
                    width: getwidth(320),
                    child: ListView.builder(
                        padding: EdgeInsets.only(top: getHeight(5)),
                        physics: const BouncingScrollPhysics(),
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.only(bottom: getHeight(10)),
                              child: Container(
                                height: getHeight(56),
                                width: getwidth(320),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(getwidth(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0.1,
                                      blurRadius: 0.2,
                                      offset: const Offset(0.1, 0.1),
                                    ),
                                  ],
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getwidth(20),
                                      right: getwidth(20),
                                      top: getHeight(20),
                                      bottom: getHeight(18)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                          height: getHeight(18),
                                          width: getwidth(126),
                                          child: Text("Artificial Intelegence ",
                                           overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: const Color(0xff8F91AC),
                                                fontWeight: FontWeight.w400,
                                                fontSize: getwidth(12),
                                              ))),
                                      SizedBox(
                                        width: getwidth(33),
                                      ),
                                      Text("2",
                                          style: TextStyle(
                                            color: const Color(0xff8F91AC),
                                            fontWeight: FontWeight.w400,
                                            fontSize: getwidth(10),
                                          )),
                                      SizedBox(
                                        width: getwidth(47),
                                      ),
                                      Text("A",
                                          style: TextStyle(
                                            color: const Color(0xff8F91AC),
                                            fontWeight: FontWeight.w400,
                                            fontSize: getwidth(10),
                                          )),
                                      SizedBox(
                                        width: getwidth(42),
                                      ),
                                      Text("8",
                                          style: TextStyle(
                                            color: const Color(0xff8F91AC),
                                            fontWeight: FontWeight.w400,
                                            fontSize: getwidth(10),
                                          ))
                                    ],
                                  ),
                                ),
                              ));
                        }),
                  ),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
