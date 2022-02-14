import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:simak/screens/account/account.dart';
import 'package:simak/screens/info/info.dart';
import 'package:simak/screens/present/present.dart';
import 'package:simak/utils/sizer.dart';

enum TabItem { jadwal, home, account }

Map<TabItem, Widget> tabName = {
  TabItem.jadwal: Info(),
  TabItem.home: const Present(),
  TabItem.account: const Account(),
};

const Map<TabItem, Color> activeTabColor = {
  TabItem.jadwal: Color(0xff121644),
  TabItem.home: Color(0xff121644),
  TabItem.account: Color(0xff121644),
};

class BottomNavigation extends StatelessWidget {
 const BottomNavigation({required this.currentTab, required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: getHeight(56),
        child: BottomNavigationBar(
          unselectedFontSize: getwidth(8),
          selectedFontSize: getwidth(8),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
            fontSize: getwidth(8),
          )),
          type: BottomNavigationBarType.fixed,
          items: [
            _payment(TabItem.jadwal),
            _achive(TabItem.home),
            _more(TabItem.account),
          ],
          onTap: (index) => onSelectTab(
            TabItem.values[index],
          ),
          currentIndex: currentTab.index,
          selectedItemColor: Colors.black,
        ));
  }

  BottomNavigationBarItem _payment(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(
        LineIcons.book,
        color: _colorTabMatching(tabItem),
        size: getwidth(24),
      ),
      label: "jadwal",
    );
  }

  BottomNavigationBarItem _achive(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(
        LineIcons.home,
        color: _colorTabMatching(tabItem),
        size: getwidth(24),
      ),
      label: "home",
    );
  }

  BottomNavigationBarItem _more(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(
        LineIcons.user,
        color: _colorTabMatching(tabItem),
        size: getwidth(24),
      ),
      label: "akun",
    );
  }

  Color _colorTabMatching(TabItem item) {
    return currentTab == item ? activeTabColor[item]! : Colors.grey;
  }
}
