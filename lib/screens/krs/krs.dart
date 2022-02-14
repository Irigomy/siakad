import 'package:flutter/material.dart';
import 'package:simak/screens/home_screen/setting.dart';
import 'package:simak/screens/krs/widgets/isikrs.dart';
import 'package:simak/utils/sizer.dart';
import 'package:simak/utils/transition.dart';

class Krs extends StatefulWidget {
  const Krs({Key? key}) : super(key: key);

  @override
  _KrsState createState() => _KrsState();
}

class _KrsState extends State<Krs> {
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
                        child: Text("Kartu Rancangan Studi",
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
            height: getHeight(78),
          ),
          SizedBox(
            height: getHeight(192),
            width: getwidth(192),
            child: Image.asset('assets/images/notfound.png'),
          ),
          SizedBox(
            height: getHeight(20),
          ),
          SizedBox(
            height: getHeight(17),
            child: Text("Belum ada KRS",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: getwidth(14),
                )),
          ),
          SizedBox(
            height: getHeight(10),
          ),
          SizedBox(
            height: getHeight(52),
            width: getwidth(260),
            child: Text(
                "Kamu belum memiliki kartu rancangan studi pada semester ini, silahkan pilih tombol dibawah untuk membuat kartu rancangan studi",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: getwidth(12),
                )),
          ),
          SizedBox(
            height: getHeight(20),
          ),
          InkWell(
            onTap: () {
              //navigate to new screen without bottom bar
              Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(
                  builder: (_) => const IsiKrs(),
                ),
              );
            },
            child: Container(
                width: getwidth(114),
                height: getHeight(40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(getwidth(20)),
                    color: const Color(0xFFF5A05D)),
                child: Center(
                  child: Text("Buat KRS",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: getwidth(12),
                      )),
                )),
                
          )
        ],
      ),
    );
  }
}
