import 'package:flutter/material.dart';

Color primaryColor = Color.fromARGB(255, 185, 97, 47);

List<BoxShadow> customShadow = [
  BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: -5,
      offset: Offset(-5, -5),
      blurRadius: 30),
  BoxShadow(
      color: Color.fromARGB(255, 212, 132, 11)!.withOpacity(.2),
      spreadRadius: 2,
      offset: Offset(7, 7),
      blurRadius: 20)
];
