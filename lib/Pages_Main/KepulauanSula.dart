import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';
import 'package:sipadu8203/Chart/Datagrid_IPM.dart';
import 'package:sipadu8203/Chart/Datagrid_Kemiskinan.dart';
import 'package:sipadu8203/Chart/Datagrid_PE.dart';
import 'package:sipadu8203/Chart/Datagrid_Penduduk.dart';
import 'package:sipadu8203/Chart/Datagrid_Pengangguran.dart';
import 'package:sipadu8203/Chart/LineChart_IPM.dart';
import 'package:sipadu8203/Chart/LineChart_Kemiskinan.dart';
import 'package:sipadu8203/Chart/LineChart_Pengangguran.dart';
import 'package:sipadu8203/Chart/LineChart_PE.dart';
import 'package:sipadu8203/constant/style_constant.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:sipadu8203/main.dart';
import 'package:sipadu8203/Chart/PieChart_Penduduk.dart';
import 'package:sipadu8203/constant/ScrollingText.dart';
import 'package:sipadu8203/Chart/Tematik_Penduduk.dart';

class KepulauanSula extends StatefulWidget {
  @override
  _KepulauanSulaState createState() => _KepulauanSulaState();
}

class _KepulauanSulaState extends State<KepulauanSula> {
  @override
  Widget build(BuildContext context) {
    List<HexColor> parentIndex = [
      HexColor('#FFD700'),
      HexColor('#b87333'),
      HexColor('#b87333')
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Indikator Strategis',
            style: GoogleFonts.publicSans(
                textStyle:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
        backgroundColor: Colors.deepOrangeAccent,
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
                                        Column(children: <Widget>[
                                          Container(
                                              width: 150,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(8.0),
                                                    bottomLeft:
                                                        Radius.circular(1.0),
                                                    bottomRight:
                                                        Radius.circular(1.0),
                                                    topRight:
                                                        Radius.circular(68.0)),
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                      offset: Offset(1.1, 1.1),
                                                      blurRadius: 7.0),
                                                ],
                                              ),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(8.0),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  1.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  1.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  68.0)),
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/images/penduduk.jpg'),
                                                    fit: BoxFit.cover,
                                                  )))
                                        ])
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 1, bottom: 1),
                                child: Container(height: 10),
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
                                    color: Colors.deepOrange.withOpacity(0.5),
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
                                                              DataGrid_Kependudukan()));
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
                                                      Colors.deepOrange,
                                                      Colors.orangeAccent,
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
                                                              Tematik(
                                                                title: '',
                                                              )));
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
                                                      Colors.deepOrange,
                                                      Colors.orangeAccent,
                                                    ]),
                                                  ),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left: 1,
                                                                        bottom:
                                                                            3),
                                                                child: Icon(
                                                                  Icons.map,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 25,
                                                                ),
                                                              ),
                                                            ]),
                                                        Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left: 4,
                                                                        bottom:
                                                                            3),
                                                                    child: Text(
                                                                        'Peta',
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight: FontWeight.bold)),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: <
                                                                    Widget>[
                                                                  Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        left: 4,
                                                                        bottom:
                                                                            3),
                                                                    child: Text(
                                                                        'Tematik',
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                12,
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight: FontWeight.bold)),
                                                                  ),
                                                                ],
                                                              ),
                                                            ]),
                                                      ]),
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
                                                      Colors.deepOrangeAccent,
                                                      Colors.orangeAccent,
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
                                        Column(children: <Widget>[
                                          Container(
                                              width: 150,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(8.0),
                                                    bottomLeft:
                                                        Radius.circular(1.0),
                                                    bottomRight:
                                                        Radius.circular(1.0),
                                                    topRight:
                                                        Radius.circular(68.0)),
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                      offset: Offset(1.1, 1.1),
                                                      blurRadius: 7.0),
                                                ],
                                              ),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(8.0),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  1.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  1.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  68.0)),
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/images/ekonomi.jpg'),
                                                    fit: BoxFit.cover,
                                                  )))
                                        ])
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 1, bottom: 1),
                                child: Container(height: 10),
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
                                    color: Colors.deepOrange.withOpacity(0.5),
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
                                                              DataGrid_PertumbuhanEkonomi()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Colors.deepOrange,
                                                      Colors.orangeAccent,
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
                                    // Expanded(
                                    //  child: Row(
                                    //    mainAxisAlignment:
                                    //        MainAxisAlignment.center,
                                    //    crossAxisAlignment:
                                    //        CrossAxisAlignment.center,
                                    //    children: <Widget>[
                                    //     Column(
                                    //        mainAxisAlignment:
                                    //            MainAxisAlignment.center,
                                    //        crossAxisAlignment:
                                    //            CrossAxisAlignment.center,
                                    //        children: <Widget>[
                                    //          GestureDetector(
                                    //            onTap: () {
                                    //              Navigator.push(
                                    //                  context,
                                    //                  MaterialPageRoute(
                                    //                      builder: (context) =>
                                    //                          KepsulPenduduk()));
                                    //            },
                                    //            child: Container(
                                    //              height: 40,
                                    //             width: 100,
                                    //              decoration: BoxDecoration(
                                    //                borderRadius:
                                    //                    BorderRadius.circular(
                                    //                       5),
                                    //                gradient:
                                    //                   LinearGradient(colors: [
                                    //                 Colors.deepOrange,
                                    //                  Colors.orangeAccent,
                                    //               ]),
                                    //             ),
                                    //             child: Center(
                                    //                child: Text(
                                    //                  'Infografis',
                                    //                  style: TextStyle(
                                    //                      fontSize: 18,
                                    //                     color: Colors.white,
                                    //                     fontWeight:
                                    //                          FontWeight.bold),
                                    //                ),
                                    //              ),
                                    //            ),
                                    //         ),
                                    //        ],
                                    //     ),
                                    //    ],
                                    //     ),
                                    //   ),
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
                                                              LineChart_PertumbuhanEkonomi()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Colors.deepOrange,
                                                      Colors.orangeAccent,
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
                                        Column(children: <Widget>[
                                          Container(
                                              width: 150,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(8.0),
                                                    bottomLeft:
                                                        Radius.circular(1.0),
                                                    bottomRight:
                                                        Radius.circular(1.0),
                                                    topRight:
                                                        Radius.circular(68.0)),
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                      offset: Offset(1.1, 1.1),
                                                      blurRadius: 7.0),
                                                ],
                                              ),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(8.0),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  1.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  1.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  68.0)),
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/images/pengangguran.jpg'),
                                                    fit: BoxFit.cover,
                                                  )))
                                        ])
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 1, bottom: 1),
                                child: Container(height: 10),
                              ),
                              Container(
                                  margin: EdgeInsets.all(1.0),
                                  width: 315,
                                  height: 15,
                                  child: ScrollingText(
                                    text:
                                        'Tingkat Pengangguran Terbuka di Kabupaten Kepulauan Sula pada Tahun 2021 sebesar 2,78 Persen, turun 2.12 persen dari tahun 2020',
                                    textStyle: TextStyle(fontSize: 12),
                                    scrollAxis: Axis.horizontal,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 8, bottom: 8),
                                child: Container(
                                  height: 2,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange.withOpacity(0.5),
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
                                                              DataGrid_Pengangguran()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Colors.deepOrange,
                                                      Colors.orangeAccent,
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
                                    //     Expanded(
                                    //        child: Row(
                                    //          mainAxisAlignment:
                                    //              MainAxisAlignment.center,
                                    //          crossAxisAlignment:
                                    //              CrossAxisAlignment.center,
                                    //          children: <Widget>[
                                    //            Column(
                                    //              mainAxisAlignment:
                                    //                  MainAxisAlignment.center,
                                    //             crossAxisAlignment:
                                    //                  CrossAxisAlignment.center,
                                    //            children: <Widget>[
                                    //               GestureDetector(
                                    //                 onTap: () {
                                    //                   Navigator.push(
                                    //                       context,
                                    //                       MaterialPageRoute(
                                    //                           builder: (context) =>
                                    //                               KepsulPenduduk()));
                                    //                 },
                                    //                 child: Container(
                                    //                   height: 40,
                                    //                  decoration: BoxDecoration(
                                    //                    borderRadius:
                                    //                         BorderRadius.circular(
                                    //                             5),
                                    //                     gradient:
                                    //                         LinearGradient(colors: [
                                    //                       Colors.deepOrange,
                                    //                      Colors.orangeAccent,
                                    //                     ]),
                                    //                  ),
                                    //                    child: Text(
                                    //                      'Infografis',
                                    //                     style: TextStyle(
                                    //                         fontSize: 18,
                                    //                         color: Colors.white,
                                    //                         fontWeight:
                                    //                              FontWeight.bold),
                                    //                   ),
                                    //                   ),
                                    //                   ),
                                    //                   ),
                                    //                ],
                                    //               ),
                                    //             ],
                                    //          ),
                                    //         ),
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
                                                              LineChart_Pengangguran()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Colors.deepOrange,
                                                      Colors.orangeAccent,
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
                                        Column(children: <Widget>[
                                          Container(
                                              width: 150,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(8.0),
                                                    bottomLeft:
                                                        Radius.circular(1.0),
                                                    bottomRight:
                                                        Radius.circular(1.0),
                                                    topRight:
                                                        Radius.circular(68.0)),
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                      offset: Offset(1.1, 1.1),
                                                      blurRadius: 7.0),
                                                ],
                                              ),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(8.0),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  1.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  1.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  68.0)),
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/images/kemiskinan.jpg'),
                                                    fit: BoxFit.cover,
                                                  )))
                                        ])
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 1, bottom: 1),
                                child: Container(height: 10),
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
                                    color: Colors.deepOrange.withOpacity(0.5),
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
                                                              DataGrid_Kemiskinan()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Colors.deepOrange,
                                                      Colors.orangeAccent,
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
                                    //              Expanded(
                                    //                child: Row(
                                    //                 mainAxisAlignment:
                                    //                     MainAxisAlignment.center,
                                    //                 crossAxisAlignment:
                                    //                     CrossAxisAlignment.center,
                                    //                 children: <Widget>[
                                    //                   Column(
                                    //                    mainAxisAlignment:
                                    //                       MainAxisAlignment.center,
                                    //                   crossAxisAlignment:
                                    //                      CrossAxisAlignment.center,
                                    //                  children: <Widget>[
                                    //                    GestureDetector(
                                    //                      onTap: () {
                                    //                        Navigator.push(
                                    //                           context,
                                    //                           MaterialPageRoute(
                                    //                               builder: (context) =>
                                    //                                    KepsulPenduduk()));
                                    //                      },
                                    //                      child: Container(
                                    //                        height: 40,
                                    //                        width: 100,
                                    //                        decoration: BoxDecoration(
                                    //                          borderRadius:
                                    //                              BorderRadius.circular(
                                    //                                  5),
                                    //                          gradient:
                                    //                               LinearGradient(colors: [
                                    //                             Colors.deepOrange,
                                    //                             Colors.orangeAccent,
                                    //                           ]),
                                    //                        ),
                                    //                        child: Center(
                                    //                          child: Text(
                                    //                            'Infografis',
                                    //                            style: TextStyle(
                                    //                               fontSize: 18,
                                    //                                color: Colors.white,
                                    //                                fontWeight:
                                    //                                    FontWeight.bold),
                                    //                         ),
                                    //                       ),
                                    //                     ),
                                    //                   ),
                                    //                 ],
                                    //               ),
                                    //             ],
                                    //           ),
                                    //         ),
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
                                                              LineChart_Kemiskinan()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Colors.deepOrange,
                                                      Colors.orangeAccent,
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
                                        Column(children: <Widget>[
                                          Container(
                                              width: 150,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(8.0),
                                                    bottomLeft:
                                                        Radius.circular(1.0),
                                                    bottomRight:
                                                        Radius.circular(1.0),
                                                    topRight:
                                                        Radius.circular(68.0)),
                                                boxShadow: <BoxShadow>[
                                                  BoxShadow(
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                      offset: Offset(1.1, 1.1),
                                                      blurRadius: 7.0),
                                                ],
                                              ),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: Radius
                                                              .circular(8.0),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  1.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  1.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  68.0)),
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/images/penduduk.jpg'),
                                                    fit: BoxFit.cover,
                                                  )))
                                        ])
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24, right: 24, top: 1, bottom: 1),
                                child: Container(height: 10),
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
                                    color: Colors.deepOrange.withOpacity(0.5),
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
                                                              DataGrid_IndeksPembangunanManusia()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Colors.deepOrange,
                                                      Colors.orangeAccent,
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
                                    //         Expanded(
                                    //           child: Row(
                                    //              mainAxisAlignment:
                                    //                 MainAxisAlignment.center,
                                    //             crossAxisAlignment:
                                    //                 CrossAxisAlignment.center,
                                    //              children: <Widget>[
                                    //                Column(
                                    //                  mainAxisAlignment:
                                    //                     MainAxisAlignment.center,
                                    //                 crossAxisAlignment:
                                    //                      CrossAxisAlignment.center,
                                    //                 children: <Widget>[
                                    //                    GestureDetector(
                                    //                      onTap: () {
                                    //                        Navigator.push(
                                    //                            context,
                                    //                            MaterialPageRoute(
                                    //                                builder: (context) =>
                                    //                                    DataGrid_IndeksPembangunanManusia()));
                                    //                      },
                                    //                      child: Container(
                                    //                        height: 40,
                                    //                       width: 100,
                                    //                        decoration: BoxDecoration(
                                    //                         borderRadius:
                                    //                             BorderRadius.circular(
                                    //                                 5),
                                    //                         gradient:
                                    //                             LinearGradient(colors: [
                                    //                          Colors.deepOrange,
                                    //                           Colors.orangeAccent,
                                    //                         ]),
                                    //                      ),
                                    //                      child: Center(
                                    //                        child: Text(
                                    //                          'Infografis',
                                    //                          style: TextStyle(
                                    //                              fontSize: 18,
                                    //                              color: Colors.white,
                                    //                              fontWeight:
                                    //                                  FontWeight.bold),
                                    //                        ),
                                    //                      ),
                                    //                    ),
                                    //                  ),
                                    //                ],
                                    //              ),
                                    //            ],
                                    //          ),
                                    //       ),
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
                                                              LineChart_IPM()));
                                                },
                                                child: Container(
                                                  height: 40,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    gradient:
                                                        LinearGradient(colors: [
                                                      Colors.deepOrange,
                                                      Colors.orangeAccent,
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
