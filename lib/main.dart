import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_gestation/gestation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gestation(),
    theme: ThemeData(fontFamily: 'Poppins'),
  ));

}

