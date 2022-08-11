import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sipadu8203/Chart/PE_LineChart.dart';
import 'package:sipadu8203/constant/style_constant.dart';
import 'package:sipadu8203/main.dart';
import 'package:sipadu8203/Chart/Penduduk_PieChart.dart';
import 'package:sipadu8203/constant/ScrollingText.dart';

class KepulauanSula extends StatefulWidget {
  @override
  _KepulauanSulaState createState() => _KepulauanSulaState();
}

class _KepulauanSulaState extends State<KepulauanSula> {
  @override
  Widget build(BuildContext context) {
    List<HexColor> parentIndex = [
      HexColor('#FFD700'),
      HexColor('#aaa9ad'),
      HexColor('#b87333')
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Kepulauan Sula',
            style: GoogleFonts.publicSans(
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 12, top: 10, bottom: 12),
              child: Text('Jumlah Penduduk', style: mTitleStyle),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 16, right: 8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(68.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, left: 16, right: 24),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Icon(
                                                          Icons.arrow_upward,
                                                          color: Colors.green,
                                                          size: 25,
                                                        ),
                                                      ),
                                                    ]),
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Text('105.293',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                mHeadCKPStyle),
                                                      ),
                                                    ]),
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Text('Jiwa',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                mHeadCKPStyle2),
                                                      ),
                                                    ]),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4, bottom: 3),
                                                  child: Text('Tahun 2021',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: mAbsenStyle),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Icon(
                                              Icons.collections_bookmark,
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              size: 60,
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.all(1.0),
                                  width: 315,
                                  height: 15,
                                  child: ScrollingText(
                                    text:
                                        'Jumlah Penduduk di Kabupaten Kepulauan Sula pada Tahun 2021 sebanyak 105.293 Jiwa',
                                    textStyle: TextStyle(fontSize: 12),
                                    scrollAxis: Axis.horizontal,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 8, bottom: 8),
                                child: Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.0)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 8, bottom: 16),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Tabel',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Infografis',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Grafik',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, top: 10, bottom: 12),
              child: Text('Pertumbuhan Ekonomi', style: mTitleStyle),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 16, right: 8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(68.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, left: 16, right: 24),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Icon(
                                                          Icons.arrow_upward,
                                                          color: Colors.green,
                                                          size: 25,
                                                        ),
                                                      ),
                                                    ]),
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Text('1,34',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                mHeadCKPStyle),
                                                      ),
                                                    ]),
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Text('Persen',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                mHeadCKPStyle2),
                                                      ),
                                                    ]),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4, bottom: 3),
                                                  child: Text('Tahun 2021',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: mAbsenStyle),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Icon(
                                              Icons.collections_bookmark,
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              size: 60,
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.all(1.0),
                                  width: 315,
                                  height: 15,
                                  child: ScrollingText(
                                    text:
                                        'Pertumbuhan Ekonomi Kabupaten Kepulauan Sula pada Tahun 2021 tumbuh sebesar 1,34 persen',
                                    textStyle: TextStyle(fontSize: 12),
                                    scrollAxis: Axis.horizontal,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 8, bottom: 8),
                                child: Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.0)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 8, bottom: 16),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Tabel',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Infografis',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PESulaScreen()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Grafik',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, top: 10, bottom: 12),
              child: Text('Pengangguran', style: mTitleStyle),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 16, right: 8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(68.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, left: 16, right: 24),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Icon(
                                                          Icons.arrow_downward,
                                                          color: Colors.green,
                                                          size: 25,
                                                        ),
                                                      ),
                                                    ]),
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Text('2,78',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                mHeadCKPStyle),
                                                      ),
                                                    ]),
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Text('Persen',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                mHeadCKPStyle2),
                                                      ),
                                                    ]),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4, bottom: 3),
                                                  child: Text('Tahun 2021',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: mAbsenStyle),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Icon(
                                              Icons.collections_bookmark,
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              size: 60,
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.all(1.0),
                                  width: 315,
                                  height: 15,
                                  child: ScrollingText(
                                    text:
                                        '1,3 ribu dari 45,7 ribu penduduk yang merupakan Angkatan Kerja di Kabupaten Kepulauan Sula pada Tahun 2021 merupakan Pengangguran Terbuka.',
                                    textStyle: TextStyle(fontSize: 12),
                                    scrollAxis: Axis.horizontal,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 8, bottom: 8),
                                child: Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.0)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 8, bottom: 16),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Tabel',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Infografis',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Grafik',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, top: 10, bottom: 12),
              child: Text('Kemiskinan', style: mTitleStyle),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 16, right: 8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(68.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, left: 16, right: 24),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Icon(
                                                          Icons.arrow_downward,
                                                          color: Colors.green,
                                                          size: 25,
                                                        ),
                                                      ),
                                                    ]),
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Text('8,23',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                mHeadCKPStyle),
                                                      ),
                                                    ]),
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Text('Persen',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                mHeadCKPStyle2),
                                                      ),
                                                    ]),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4, bottom: 3),
                                                  child: Text('Tahun 2021',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: mAbsenStyle),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Icon(
                                              Icons.collections_bookmark,
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              size: 60,
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.all(1.0),
                                  width: 315,
                                  height: 15,
                                  child: ScrollingText(
                                    text:
                                        'Persentase Penduduk Miskin di Kabupaten Kepulauan Sula pada Tahun 2021 adalah 8,23 Persen, sedangkan Jumlah Penduduk Miskin di Kabupaten Kepulauan Sula pada Tahun 2021 adalah 8,36 Ribu Jiwa',
                                    textStyle: TextStyle(fontSize: 12),
                                    scrollAxis: Axis.horizontal,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 8, bottom: 8),
                                child: Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.0)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 8, bottom: 16),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Tabel',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Infografis',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Grafik',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, top: 10, bottom: 12),
              child: Text('Indeks Pembangunan Manusia', style: mTitleStyle),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 16, right: 8),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topRight: Radius.circular(68.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  offset: Offset(1.1, 1.1),
                                  blurRadius: 10.0),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 16, left: 16, right: 24),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Icon(
                                                          Icons.arrow_upward,
                                                          color: Colors.green,
                                                          size: 25,
                                                        ),
                                                      ),
                                                    ]),
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Text('63,80',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                mHeadCKPStyle),
                                                      ),
                                                    ]),
                                                Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 4,
                                                                bottom: 3),
                                                        child: Text('Persen',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                mHeadCKPStyle2),
                                                      ),
                                                    ]),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4, bottom: 3),
                                                  child: Text('Tahun 2021',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: mAbsenStyle),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Icon(
                                              Icons.collections_bookmark,
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              size: 60,
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.all(1.0),
                                  width: 315,
                                  height: 15,
                                  child: ScrollingText(
                                    text:
                                        'Indeks Pembangunan Manusia di Kabupaten Kepulauan Sula pada tahun 2021 adalah 63,80 persen',
                                    textStyle: TextStyle(fontSize: 12),
                                    scrollAxis: Axis.horizontal,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 8, bottom: 8),
                                child: Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4.0)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 8, bottom: 16),
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Tabel',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Infografis',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              KepsulPenduduk()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Color.fromRGBO(
                                                          32, 174, 227, 1),
                                                      Color.fromRGBO(
                                                          32, 174, 227, .6),
                                                    ]),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Grafik',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
