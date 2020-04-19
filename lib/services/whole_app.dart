import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:coraona2903/models/class_short_statewise_data.dart';
import 'package:coraona2903/models/testcount_statewise_stats.dart';

import 'package:coraona2903/models/class_citites.dart';
import 'package:coraona2903/models/district_state.dart';

class WholeApp {
  String testCountStatewiseStats = 'https://api.covid19india.org/data.json';
  List<ShortStatewiseData> shortList = List();

  String districtAPI = 'https://api.covid19india.org/state_district_wise.json';
  List<Cities> citilesList = List();


  Future stateWiseStats() async {
    final httpRequestTestCount = await http.get(testCountStatewiseStats);
    final testJson = jsonDecode(httpRequestTestCount.body);

    Master masterAll = Master.fromJson(testJson);

    masterAll.statewise.forEach(
      (key) {
//        print(
//            'city : ${key.state}   confirmed : ${key.confirmed}   active: ${key.active}    deaths : ${key.deaths}');
        shortList.add(
          ShortStatewiseData(
            state: key.state,
            confirmed: key.confirmed,
            active: key.active,
            death: key.deaths,
          ),
        );
      },
    );
  }

  Future districtWiseStats() async {
    final httpRequest = await http.get(districtAPI);
    final json = jsonDecode(httpRequest.body);

    IndiaState indiaState = new IndiaState.fromJson(json);

    indiaState.kerala.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.delhi.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.telangana.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.rajasthan.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.haryana.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.uttarPradesh.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.ladakh.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.tamilNadu.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.jammuAndKashmir.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.karnataka.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.maharashtra.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.punjab.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.andhraPradesh.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.uttarakhand.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.odisha.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.puducherry.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.westBengal.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.chandigarh.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.chhattisgarh.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.gujarat.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.himachalPradesh.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.madhyaPradesh.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.bihar.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.manipur.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.mizoram.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.goa.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.andamanAndNicobarIslands.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.jharkhand.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

    indiaState.assam.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });

//    indiaState.unknown.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
  }



}
