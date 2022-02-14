import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:simak/utils/sizer.dart';

class Barcode extends StatefulWidget {
  const Barcode({Key? key}) : super(key: key);

  @override
  _BarcodeState createState() => _BarcodeState();
}

class _BarcodeState extends State<Barcode> {
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
                          child: Text("Barcode",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontSize: getwidth(12),
                              ))))),
                  InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.circle,
                        color: Colors.grey.withOpacity(0.6),
                        size: getwidth(30),
                      ))
                ],
              ))),
      SizedBox(
          width: getwidth(296),
          child: Center(
              child: Text(
            "Rabu 24-februari-2021",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
              color: Colors.black,
              fontSize: getwidth(10),
            )),
          ))),
      Padding(
        padding: EdgeInsets.only(top: getHeight(12)),
        child: SizedBox(
          height: getHeight(420),
          width: getwidth(305),
          child: Stack(
            children: [
              Positioned(
                  top: getHeight(60),
                  child: Container(
                    height: getHeight(220),
                    width: getwidth(305),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: Icon(
                      LineIcons.barcode,
                      size: getwidth(220),
                    ),
                  )),
              Positioned(
                  bottom: getHeight(60),
                  child: Container(
                    width: getwidth(305),
                    height: getHeight(50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                  ))
            ],
          ),
        ),
      ),
    ]);
  }
}
