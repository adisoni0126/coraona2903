// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';
import 'package:coraona2903/screens/covid_19_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'StatusBar',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Covid19Screen(),
    );
  }
}
