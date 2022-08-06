import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sipadu8203/constant/color_constant.dart';
import 'package:sipadu8203/constant/style_constant.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Developer',
            style: GoogleFonts.publicSans(
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        height: 600,
        margin: EdgeInsets.only(left: 16, right: 8, top: 16),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 8),
                    padding: EdgeInsets.only(left: 16),
                    height: 150,
                    decoration: BoxDecoration(
                        color: mFillColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: mBorderColor, width: 1)),
                    child: Row(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('SIPADU 8203 ver 0.3',
                                    style: mTentangStyle),
                                SizedBox(height: 10),
                                Container(
                                  constraints: new BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width -
                                              95),
                                  child: Text(
                                      'SIPADU (Sistem Informasi Terpadu) 8203 adalah sistem yang dirancang untuk memenuhi kebutuhan internal BPS Kabupaten Kabupaten Sula. Sistem ini akan terus disempurnakan, oleh karena itu diharapkan pengguna sistem ini dapat memberi masukan dan melaporkan bug yang ditemui.',
                                      style: mAbsenStyle,
                                      textAlign: TextAlign.justify),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 8),
                      padding: EdgeInsets.only(left: 10),
                      height: 64,
                      decoration: BoxDecoration(
                          color: mFillColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColor, width: 1)),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.phone_android),
                          Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Developer Android',
                                      style: mJumlahSubStyle,
                                      textAlign: TextAlign.left),
                                  Text('Wisnu Candra Gumelar',
                                      style: mAbsenSubStyle,
                                      textAlign: TextAlign.left)
                                ],
                              )),
                        ],
                      )),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 8),
                      padding: EdgeInsets.only(left: 10),
                      height: 64,
                      decoration: BoxDecoration(
                          color: mFillColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColor, width: 1)),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.web),
                          Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Web Developer',
                                      style: mJumlahSubStyle,
                                      textAlign: TextAlign.left),
                                  Text('Muhammad Alham Musa',
                                      style: mAbsenSubStyle,
                                      textAlign: TextAlign.left)
                                ],
                              )),
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 8),
                      padding: EdgeInsets.only(left: 10),
                      height: 64,
                      decoration: BoxDecoration(
                          color: mFillColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColor, width: 1)),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.android),
                          Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Api Absensi',
                                      style: mJumlahSubStyle,
                                      textAlign: TextAlign.left),
                                  Text('M. Donni Saputra ',
                                      style: mAbsenSubStyle,
                                      textAlign: TextAlign.left)
                                ],
                              )),
                        ],
                      )),
                ),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 8),
                      padding: EdgeInsets.only(left: 10),
                      height: 64,
                      decoration: BoxDecoration(
                          color: mFillColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: mBorderColor, width: 1)),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.build),
                          Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Progres Sistem',
                                      style: mJumlahSubStyle,
                                      textAlign: TextAlign.left),
                                  Text('60%',
                                      style: mAbsenSubStyle,
                                      textAlign: TextAlign.left)
                                ],
                              )),
                        ],
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
