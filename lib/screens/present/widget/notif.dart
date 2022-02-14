import 'package:flutter/material.dart';
import 'package:simak/utils/sizer.dart';

class Notif extends StatefulWidget {
  const Notif({Key? key}) : super(key: key);

  @override
  _NotifState createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    GetSize().init(context);
    return Column(
      children: [
        Container(
          height: getHeight(68),
          width: getwidth(360),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(getwidth(20)),
              topRight: Radius.circular(getwidth(20)),
            ),
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
                left: getwidth(143),
                right: getwidth(20),
                top: getHeight(12),
                bottom: getHeight(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: getwidth(80),
                    height: getHeight(21),
                    child: Text(
                      "Notifikasi",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: getwidth(18),
                          fontWeight: FontWeight.w400),
                    )),
                SizedBox(
                  width: getwidth(10),
                  child: Text(
                    "X",
                    style: TextStyle(
                        color: const Color(0xff8F91AC),
                        fontSize: getwidth(12),
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: getHeight(500),
          width: getwidth(360),
          child: ListView.builder(
              padding: EdgeInsets.only(top: getHeight(5)),
              physics: const BouncingScrollPhysics(),
              itemCount: 12,
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.only(bottom: getHeight(5)),
                    child: Container(
                      height: getHeight(112),
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
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: getwidth(20),
                            right: getwidth(20),
                            top: getHeight(12),
                            bottom: getHeight(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: getHeight(55)),
                              child: Container(
                                width: getwidth(24),
                                height: getwidth(24),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(getwidth(20)),
                                    color: Colors.red),
                                child: Center(
                                  child: Text(
                                    "!",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: getwidth(14),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: getwidth(280),
                              height: getHeight(172),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Peringatan",
                                          style: TextStyle(
                                              color: const Color(0xff8F91AC),
                                              fontSize: getwidth(12),
                                          fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          width: getwidth(40),
                                        ),
                                        Text(
                                          "Baru saja",
                                          style: TextStyle(
                                              color: const Color(0xff8F91AC),
                                              fontSize: getwidth(12),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ]),
                                  SizedBox(
                                    height: getHeight(6),
                                  ),
                                  Text(
                                    "Segera lakukan Pembayaran",
                                    style: TextStyle(
                                        fontSize: getwidth(14),
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: getHeight(6),
                                  ),
                                  SizedBox(
                                    width: getwidth(280),
                                    height: getHeight(35),
                                    
                                    child: Text(
                                      "Hey Jude, kamu belum menyelesaikan pembayaran semester. segera selesaikan pembayaran agar...",
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                          fontSize: getwidth(12),
                                          fontWeight: FontWeight.w400),
                                    ),
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
      ],
    );
  }
}
