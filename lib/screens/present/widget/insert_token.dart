import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:simak/utils/sizer.dart';

class FunkyOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FunkyOverlayState();
}

class FunkyOverlayState extends State<FunkyOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    errorController = StreamController<ErrorAnimationType>();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);
    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  void dispose() {
    errorController!.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            width: getwidth(300),
            height: getHeight(260),
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Column(
              children: <Widget>[
                SizedBox(height: getHeight(10)),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: getHeight(5.0)),
                  child: Text(
                    'Presensi kuliah',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: getwidth(18)),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: getHeight(5.0)),
                  child: Text(
                    'Convolution neural network',
                    style: TextStyle(
                        fontWeight: FontWeight.w300, fontSize: getwidth(16)),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                Form(
                  key: formKey,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: getHeight(0), horizontal: getwidth(30)),
                      child: PinCodeTextField(
                        appContext: context,
                        pastedTextStyle: TextStyle(
                          color: Colors.green.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                        length: 5,
                        blinkWhenObscuring: true,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          selectedFillColor: Colors.grey.withOpacity(0.2),
                          selectedColor: Colors.grey.withOpacity(0.2),
                          activeColor: Colors.grey.withOpacity(0.2),
                          inactiveColor: Colors.grey.withOpacity(0.2),
                          inactiveFillColor: const Color(0xffEDF2FF),
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          errorBorderColor: Colors.red.withOpacity(0.5),
                          fieldHeight: getHeight(40),
                          fieldWidth: getwidth(40),
                          activeFillColor: Colors.white,
                        ),
                        cursorColor: Colors.black,
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        errorAnimationController: errorController,
                        controller: textEditingController,
                        keyboardType: TextInputType.multiline,
                        boxShadows: const [
                          BoxShadow(
                            offset: Offset(0, 1),
                            color: Colors.black12,
                            blurRadius: 10,
                          )
                        ],
                        onCompleted: (v) {
                          print("Completed");
                        },
                        // onTap: () {
                        //   print("Pressed");
                        // },
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          print("Allowing to paste $text");
                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                          return true;
                        },
                      )),
                ),
                SizedBox(height: getHeight(5)),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: getHeight(16.0), horizontal: getwidth(30)),
                  child: ButtonTheme(
                    height: getwidth(50),
                    child: TextButton(
                      onPressed: () {
                        formKey.currentState!.validate();
                        // conditions for validating
                        if (currentText.length != 5 || currentText != "12345") {
                          errorController!.add(ErrorAnimationType
                              .shake); // Triggering error shake animation
                          setState(() => hasError = true);
                        } else {
                          setState(
                            () {
                              hasError = false;
                              Navigator.pop(context);
                            },
                          );
                        }
                      },
                      child: Center(
                          child: Text(
                        "Presensi",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: getwidth(16),
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffF5A05D),
                    borderRadius: BorderRadius.circular(getwidth(5)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
