// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';
import 'package:coraona2903/screens/covid_19_screen.dart';
import 'package:coraona2903/screens/one_state_details.dart';
import 'package:coraona2903/services/whole_app.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void setUpLocator() {
  GetIt.I.registerLazySingleton(() => WholeApp());
}

void main() {
  setUpLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'StatusBar',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (ctx) => Covid19Screen(),
//        '/oneStateDetails': (ctx) => OneStateDetails(),
      },
    );
  }
}
