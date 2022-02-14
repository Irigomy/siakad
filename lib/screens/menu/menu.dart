import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simak/utils/sizer.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    GetSize().init(context);
    return Column(children: [
      SizedBox(height: gettop() * 2),
      Align(
          alignment: Alignment.center,
          child: SizedBox(
              height: getHeight(30),
              width: getwidth(296),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.grey.withOpacity(0.6),
                        size: getwidth(25),
                      )),
                  Center(
                      child: SizedBox(
                          child: Text("Halaman Menu",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: getwidth(18),
                              ))))),
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.grey.withOpacity(0.6),
                        size: getwidth(25),
                      ))
                ],
              ))),
      SizedBox(
        width: getwidth(296),
      ),
      Padding(
          padding: EdgeInsets.only(top: getHeight(7)),
          child: Container(
            height: getHeight(146),
            width: getwidth(305),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
          )),
      SizedBox(height: getHeight(13)),
      SizedBox(
          height: getHeight(18),
          width: getwidth(296),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                  child: SizedBox(
                      child: Text(
                "Kalender Akademik",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: getwidth(12),
                )),
              ))),
              Icon(
                Icons.more_horiz,
                color: Colors.grey.withOpacity(0.6),
              )
            ],
          )),
      SizedBox(height: getHeight(13)),
      SizedBox(
        height: getHeight(29),
        width: getwidth(305),
        child: ListView.builder(
            padding: const EdgeInsets.only(left: 0),
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.only(right: getwidth(12)),
                  child: Container(
                      width: getwidth(90),
                      height: getHeight(29),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey,
                      ),
                      child: Center(
                          child: Text(
                        "Januari",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontSize: getwidth(12),
                        )),
                      ))));
            }),
      ),
      SizedBox(height: getHeight(13)),
      SizedBox(
          height: getHeight(18),
          width: getwidth(296),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                  child: SizedBox(
                      child: Text(
                "Menu Utama",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: getwidth(12),
                )),
              ))),
              Center(
                  child: Icon(
                Icons.more_horiz,
                color: Colors.grey.withOpacity(0.6),
              ))
            ],
          )),
      SizedBox(height: getHeight(13)),
    ]);
  }
}
