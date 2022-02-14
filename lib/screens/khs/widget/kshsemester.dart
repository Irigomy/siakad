import 'package:flutter/material.dart';
import 'package:simak/utils/sizer.dart';

class khsSemester extends StatefulWidget {
  const khsSemester({Key? key}) : super(key: key);

  @override
  _khsSemesterState createState() => _khsSemesterState();
}

class _khsSemesterState extends State<khsSemester>
    with TickerProviderStateMixin {
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
            height: getHeight(21),
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
                        child: Text("KHS Semester",
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
          SizedBox(height: getHeight(30)),
          Container(
              height: getHeight(150),
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
                color: const Color(0xFF393E6D),
              )),
          SizedBox(height: getHeight(10)),
          Container(
              height: getHeight(30),
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
                color: const Color(0xFF393E6D),
              )),
          SizedBox(
            height: getHeight(392),
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
                        width: getwidth(319),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(getwidth(10)),
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
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
