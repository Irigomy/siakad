import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simak/utils/sizer.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
import 'package:flutter/scheduler.dart';
import 'dart:math' as math;

class Kalender extends StatefulWidget {
  const Kalender({Key? key}) : super(key: key);

  @override
  _KalenderState createState() => _KalenderState();
}

class _KalenderState extends State<Kalender> {
  final DateRangePickerController _controller = DateRangePickerController();
  String headerString = "";

  @override
  Widget build(BuildContext context) {
    GetSize().init(context);
    return Stack(alignment: AlignmentDirectional.center, children: [
      Positioned(
        top: getHeight(370),
        child: SizedBox(
            width: getwidth(320),
            height: getHeight(290),
            child: ListView.builder(
               physics: const BouncingScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.only(bottom: getHeight(10)),
                      child: Container(
                        height: getHeight(60),
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
                          borderRadius: BorderRadius.circular(getwidth(10)),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(getwidth(10)),
                          child: Row(
                            children: [
                              Container(
                                width: getHeight(40),
                                height: getwidth(40),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(getwidth(10)),
                                    color: const Color(0xFF67EEBE)),
                                child: Center(
                                  child: Text(
                                    "14",
                                    style: TextStyle(
                                        fontSize: getwidth(16),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getwidth(10),
                              ),
                              Container(
                                width: getHeight(40),
                                height: getwidth(40),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(getwidth(10)),
                                    color: const Color(0xFFA6DFFF)),
                                child: Center(
                                  child: Text(
                                    "20",
                                    style: TextStyle(
                                        fontSize: getwidth(16),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getwidth(20),
                              ),
                              Text(
                                "Perubahan KRS",
                                style: TextStyle(
                                    fontSize: getwidth(14),
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                      ));
                })),
      ),
      Positioned(
        top: 0,
        child: Container(
          height: getHeight(380),
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
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(getwidth(20)),
                  bottomRight: Radius.circular(
                    getwidth(20),
                  ))),
          child: Column(
            children: [
              SizedBox(height: getHeight(30)),
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
                            child: Text("Kalender Akademik",
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
              SizedBox(height: getHeight(20)),
              Container(
                height: getHeight(290),
                width: getwidth(360),
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: getHeight(24)),
                    SizedBox(
                      height: getHeight(26),
                      width: getwidth(320),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _controller.backward!();
                              });
                            },
                            child: Container(
                              width: getHeight(30),
                              height: getwidth(30),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(getwidth(10)),
                                  color: const Color(0xFF67EEBE)),
                              child: SvgPicture.asset(
                                "assets/Icons/tiny_arrow.svg",
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Center(
                              child: SizedBox(
                            height: getHeight(24),
                            child: Text(headerString,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: getwidth(16),
                                  color: Colors.black,
                                )),
                          )),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _controller.forward!();
                                });
                              },
                              child: Container(
                                width: getHeight(30),
                                height: getwidth(30),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(getwidth(10)),
                                    color: const Color(0xFF67EEBE)),
                                child: Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationY(math.pi),
                                    child: SvgPicture.asset(
                                      "assets/Icons/tiny_arrow.svg",
                                      width: 40,
                                      fit: BoxFit.cover,
                                    )),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getHeight(20),
                    ),
                    SizedBox(
                      width: getwidth(320),
                      height: getHeight(220),
                      child: SfDateRangePicker(
                          todayHighlightColor: Colors.green,
                          controller: _controller,
                          selectionMode: DateRangePickerSelectionMode
                              .multiRange,
                          enablePastDates: false,
                          view: DateRangePickerView.month,
                          headerHeight: 0,
                          onViewChanged: viewChanged,
                          initialSelectedRanges: [
                            PickerDateRange(DateTime.now(),
                                DateTime.now().add(const Duration(days: 1))),
                          ],
                          monthViewSettings:
                              const DateRangePickerMonthViewSettings(
                                  showTrailingAndLeadingDates: true,
                                  viewHeaderStyle:
                                      DateRangePickerViewHeaderStyle(
                                          backgroundColor: Color(0XFFFFFFFF))),
                          monthCellStyle: const DateRangePickerMonthCellStyle(
                              cellDecoration:
                                  BoxDecoration(color: Color(0XFFFFFFFF)),
                              leadingDatesDecoration:
                                  BoxDecoration(color: Color(0XFFFFFFFF)),
                              trailingDatesDecoration:
                                  BoxDecoration(color: Color(0XFFFFFFFF)))),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }

  void viewChanged(DateRangePickerViewChangedArgs args) {
    final DateTime visibleStartDate = args.visibleDateRange.startDate!;
    final DateTime midDate = visibleStartDate.add(const Duration(days: 10));
    headerString = DateFormat('MMMM yyyy').format(midDate).toString();
    SchedulerBinding.instance!.addPostFrameCallback((duration) {
      setState(() {});
    });
  }
}
