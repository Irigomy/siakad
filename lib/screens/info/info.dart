
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:simak/screens/home_screen/setting.dart';
import 'package:simak/screens/kalender/kalender.dart';
import 'package:simak/utils/sizer.dart';
import 'package:simak/utils/transition.dart';

class Info extends StatefulWidget {
  static String route = 'info';

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  GlobalKey<ScrollSnapListState> sslKey = GlobalKey();
  int _focusedIndex = 3;
  void _onItemFocus(int index) {
    setState(() {
      _focusedIndex = index;
    });
  }

  Widget _buildListItem(BuildContext context, int index) {
    if (sslKey.currentState!.isInit) {
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        sslKey.currentState?.focusToItem(_focusedIndex);
      });
    }
    return SizedBox(
        height: getHeight(56),
        width: getwidth(50),
        child: Center(
          child: SizedBox(
            height: getHeight(56),
            width: getwidth(40),
            child: Material(
              color: _focusedIndex == index ? Colors.white : Colors.transparent,
              borderRadius: BorderRadius.circular(getwidth(8)),
              child: InkWell(
                child: Column(children: [
                  Text(
                    "$index ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: getwidth(24),
                        color: _focusedIndex == index
                            ? Colors.black
                            : Colors.white),
                  ),
                  Text(
                    "Sen",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: getwidth(12),
                        color: _focusedIndex == index
                            ? Colors.black
                            : Colors.white),
                  )
                ]),
                onTap: () {
                  sslKey.currentState!.focusToItem(index);
                },
              ),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    GetSize().init(context);
    return Scaffold(
      body: Column(children: [
        Container(
            width: double.infinity,
            height: getHeight(230),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(getHeight(20)),
                bottomRight: Radius.circular(getHeight(20)),
              ),
              color: const Color(0xff3DD096),
            ),
            child: Column(
              children: [
                SizedBox(height: getHeight(60)),
                SizedBox(
                    height: getHeight(29),
                    width: getwidth(320),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Jadwal",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: getwidth(24),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  SlideRoute(
                                      route: Setting.route, page: const Kalender()));
                            },
                            child: SizedBox(
                              height: getHeight(29),
                              width: getwidth(20),
                              child: SvgPicture.asset(
                                "assets/Icons/calendar.svg",
                                color: Colors.white,
                                fit: BoxFit.contain,
                              ),
                            ))
                      ],
                    )),
                SizedBox(height: getHeight(10)),
                SizedBox(
                  height: getHeight(26),
                  width: getwidth(320),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: getHeight(26),
                        width: getwidth(134),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(getwidth(8)),
                            color: Colors.white.withOpacity(0.3)),
                        child: Center(
                          child: SizedBox(
                            height: getHeight(26),
                            width: getwidth(94),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Januari 2022",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: getwidth(12),
                                  ),
                                ),
                                Text(
                                  "V",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: getwidth(12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(height: getHeight(30)),
                SizedBox(
                  height: getHeight(57),
                  width: getwidth(280),
                  child: ScrollSnapList(
                    padding: const EdgeInsets.only(left: 0),
                    onItemFocus: _onItemFocus,
                    curve: Curves.easeInOut,
                    itemSize: getwidth(50),
                    selectedItemAnchor: SelectedItemAnchor.MIDDLE,
                    itemBuilder: _buildListItem,
                    itemCount: 31,
                    dispatchScrollNotifications: true,
                    key: sslKey,
                    scrollPhysics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.antiAlias,
                  ),
                ),
              ],
            )),
        SizedBox(height: getHeight(20)),
        SizedBox(
          height: getHeight(22),
          width: getwidth(320),
          child: Text(
            "Jadwal hari ini",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: getwidth(18),
            ),
          ),
        ),
        SizedBox(height: getHeight(20)),
        SizedBox(
          height: getHeight(368),
          width: getwidth(320),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: getwidth(3), left: getwidth(3)),
            itemCount: 4,
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
                              borderRadius: BorderRadius.circular(getwidth(10)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
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
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Neural Network",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: getwidth(14),
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
                                                  WrapCrossAlignment.center,
                                              children: [
                                                Icon(
                                                  LineIcons.clock,
                                                  color: Colors.black,
                                                  size: getwidth(12),
                                                ),
                                                SizedBox(
                                                  width: getwidth(6),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "08.00 - 10.00",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: getwidth(12),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: getwidth(22)),
                                            Wrap(
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              children: [
                                                Icon(
                                                  LineIcons.home,
                                                  color: Colors.black,
                                                  size: getwidth(12),
                                                ),
                                                SizedBox(
                                                  width: getwidth(6),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "lab 2",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: getwidth(12),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: getwidth(21)),
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
      ]),
    );
  }
}
