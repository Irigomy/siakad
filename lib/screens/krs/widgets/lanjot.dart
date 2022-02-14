import 'package:flutter/material.dart';
import 'package:simak/screens/home_screen/setting.dart';
import 'package:simak/screens/krs/krs.dart';
import 'package:simak/utils/sizer.dart';
import 'package:simak/utils/transition.dart';

class Lanjot extends StatefulWidget {
  const Lanjot({Key? key}) : super(key: key);

  @override
  _LanjotState createState() => _LanjotState();
}

class _LanjotState extends State<Lanjot> {
  @override
  Widget build(BuildContext context) {
    GetSize().init(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getHeight(81),
            width: getwidth(360),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.1,
                  blurRadius: 0.1,
                  offset: const Offset(0.0, 1.0),
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: getHeight(30),
                ),
                SizedBox(
                  height: getHeight(25),
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
                              child: Text("Konfirmasi KRS",
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
              ],
            ),
          ),
          SizedBox(
            height: getHeight(528),
            width: getwidth(360),
            child: ListView.builder(
                padding: EdgeInsets.only(top: getHeight(5)),
                physics: const BouncingScrollPhysics(),
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.only(bottom: getHeight(5)),
                      child: Container(
                        height: getHeight(68),
                        width: getwidth(360),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0.2,
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
                              top: getHeight(12),
                              bottom: getHeight(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: getwidth(223),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Convolution Neural Network",
                                      style: TextStyle(
                                          fontSize: getwidth(14),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: getHeight(6),
                                    ),
                                    Row(children: [
                                      Text(
                                        "031638352",
                                        style: TextStyle(
                                            color: const Color(0xff8F91AC),
                                            fontSize: getwidth(12),
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        width: getwidth(40),
                                      ),
                                      Text(
                                        "Dosen, S.Kom., M.Cs",
                                        style: TextStyle(
                                            color: const Color(0xff8F91AC),
                                            fontSize: getwidth(12),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ]),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: getwidth(41),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Kelas A",
                                      style: TextStyle(
                                          color: const Color(0xff8F91AC),
                                          fontSize: getwidth(12),
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: getHeight(6),
                                    ),
                                    Text(
                                      "3 SKS",
                                      style: TextStyle(
                                          color: const Color(0xff8F91AC),
                                          fontSize: getwidth(12),
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ));
                }),
          ),
          Container(
              height: getHeight(110),
              width: getwidth(360),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.1,
                    blurRadius: 0.1,
                    offset: const Offset(0.0, 1.0),
                  ),
                ],
                color: Colors.white,
              ),
              child: Padding(
                  padding: EdgeInsets.only(
                      left: getwidth(20),
                      right: getwidth(20),
                      top: getHeight(10),
                      bottom: getHeight(10)),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                                color: const Color(0xff8F91AC),
                                fontSize: getwidth(12),
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "21 SKS",
                            style: TextStyle(
                                color: const Color(0xff8F91AC),
                                fontSize: getwidth(12),
                                fontWeight: FontWeight.w400),
                          )
                        ]),
                    SizedBox(height: getHeight(16)),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                          ..pop()
                          ..pop();
                      },
                      child: Container(
                        width: getwidth(300),
                        height: getHeight(50),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(getwidth(10)),
                            color: const Color(0xFFF5A05D)),
                        child: Center(
                          child: Text(
                            "Buat KRS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: getwidth(12),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ])))
        ],
      ),
    );
  }
}

/*
 InkWell(
                          onTap: () {
                            Navigator.of(context)
                              ..pop()
                              ..pop();
                          },
                          child: Container(
                            width: getwidth(150),
                            height: getHeight(40),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(getwidth(20)),
                                color: const Color(0xFF67EEBE)),
                            child: Center(
                              child: Icon(
                                Icons.done,
                                size: getwidth(20),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),


                        */