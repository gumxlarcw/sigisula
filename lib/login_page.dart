import 'package:flutter/material.dart';
import 'package:sipadu8203/UI/bottom_navbar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 150),
                height: 125,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                )),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 35,
                child: DefaultTextStyle(
                  style: TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      WavyAnimatedText('DATA STRATEGIS SULA'),
                      WavyAnimatedText('DATA STRATEGIS SULA'),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  'Memuat indikator-indikator strategis di Kabupaten Kepulauan Sula',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto'),
                ),
              ),
              SizedBox(height: 10.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(
                      width: 150,
                      child: Text(
                        'DATA',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            letterSpacing: 7,
                            fontSize: 47,
                            fontWeight: FontWeight.w800,
                            color: Colors.deepOrangeAccent),
                      ),
                    ),
                    SizedBox(width: 10.0, height: 100.0),
                    SizedBox(
                      width: 175,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto'),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText('PERTUMBUHAN EKONOMI',
                                textAlign: TextAlign.start,
                                textStyle: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange)),
                            RotateAnimatedText('ANGKA PENGANGGURAN',
                                textAlign: TextAlign.start,
                                textStyle: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange)),
                            RotateAnimatedText('INDEKS PEMBANGUNAN MANUSIA',
                                textAlign: TextAlign.start,
                                textStyle: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange)),
                            RotateAnimatedText('JUMLAH PENDUDUK',
                                textAlign: TextAlign.start,
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.orange)),
                            RotateAnimatedText('ANGKA KEMISKINAN',
                                textAlign: TextAlign.start,
                                textStyle: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange))
                          ],
                          isRepeatingAnimation: true,
                          repeatForever: true,
                          pause: Duration(milliseconds: 1000),
                        ),
                      ),
                    ),
                  ]),
              SizedBox(
                height: 200,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()));
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Colors.deepOrangeAccent,
                      Colors.orangeAccent,
                    ]),
                  ),
                  child: Center(
                    child: Text(
                      'LANJUTKAN',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
