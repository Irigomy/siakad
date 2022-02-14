import 'package:flutter/material.dart';
import 'package:simak/utils/sizer.dart';
import 'package:simak/utils/transition.dart';

class Bio extends StatefulWidget {
  const Bio({Key? key}) : super(key: key);

  @override
  _BioState createState() => _BioState();
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    GetSize().init(context);
    return Scaffold(
        body: Column(children: [
      Container(
          height: getHeight(84),
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
          child: SizedBox(
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
                            child: Text("Biodata Mahasiswa",
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
                        )),
                  ]))),
      SizedBox(
        height: getHeight(636),
        width: getwidth(360),
        child:  ListView.builder(
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
                                        "098765678",
                                        style: TextStyle(
                                            color: const Color(0xff8F91AC),
                                            fontSize: getwidth(12),
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        width: getwidth(40),
                                      ),
                                      Text(
                                        "3 SKS",
                                        style: TextStyle(
                                            color: const Color(0xff8F91AC),
                                            fontSize: getwidth(12),
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        width: getwidth(40),
                                      ),
                                      Text(
                                        "Kelas : A",
                                        style: TextStyle(
                                            color: const Color(0xff8F91AC),
                                            fontSize: getwidth(12),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ]),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: getwidth(24),
                                  height: getwidth(24),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(getwidth(8)),
                                      color: const Color(0xFF67EEBE)),
                                  child: Center(
                                    child: Icon(
                                      Icons.done,
                                      size: getwidth(20),
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ));
                }),
      )
    ]));
  }
}
