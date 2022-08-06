import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sipadu8203/Pages_Main/Aboutpage.dart';
import 'package:sipadu8203/Pages_Main/MalukuUtara.dart';
import 'package:sipadu8203/Pages_Main/KepulauanSula.dart';
import 'package:sipadu8203/Pages_Main/Indonesia.dart';
import 'package:sipadu8203/constant/color_constant.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    KepulauanSula(),
    MalukuUtara(),
    Indonesia(),
    AboutScreen(),
  ];

  var bottomTextStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.normal);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Kepulauan Sula',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_outlined),
            label: 'Maluku Utara',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_rounded),
            label: 'Indonesia',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Tentang',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mBlueColor,
        unselectedItemColor: mSubtitleColor,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
