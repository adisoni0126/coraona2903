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

  Future districtWiseStats(String newState) async {
    final httpRequest = await http.get(districtAPI);
    final json = jsonDecode(httpRequest.body);
    final state = newState.toLowerCase();
    print(state);

    IndiaState indiaState = new IndiaState.fromJson(json);
    citilesList.clear();

    if (state == 'kerala') {
      indiaState.kerala.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'delhi') {
      indiaState.delhi.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'telangana') {
      indiaState.telangana.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'rajasthan') {
      indiaState.rajasthan.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'haryana') {
      indiaState.haryana.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'uttar pradesh') {
      indiaState.uttarPradesh.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'ladakh') {
      indiaState.ladakh.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'tamil nadu') {
      indiaState.tamilNadu.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'jammu and kashmir') {
      indiaState.jammuAndKashmir.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'karnataka') {
      indiaState.karnataka.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'maharashtra') {
      indiaState.maharashtra.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'punjab') {
      indiaState.punjab.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'andhra pradesh') {
      indiaState.andhraPradesh.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'uttarakhand') {
      indiaState.uttarakhand.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'odisha') {
      indiaState.odisha.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'puducherry') {
      indiaState.puducherry.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'west bengal') {
      indiaState.westBengal.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'chandigarh') {
      indiaState.chandigarh.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'chhattisgarh') {
      indiaState.chhattisgarh.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'gujarat') {
      indiaState.gujarat.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'himachal pradesh') {
      indiaState.himachalPradesh.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'madhya pradesh') {
      indiaState.madhyaPradesh.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'bihar') {
      indiaState.bihar.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'manipur') {
      indiaState.manipur.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'mizoram') {
      indiaState.mizoram.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'goa') {
      indiaState.goa.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'andaman and nicobar islands') {
      indiaState.andamanAndNicobarIslands.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'jharkhand') {
      indiaState.jharkhand.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    } else if (state == 'assam') {
      indiaState.assam.districtData.forEach((key, value) {
        print('This is the key : ' + key);
        print('Confirmed :' + value.confirmed.toString());
        citilesList.add(Cities(key, value.confirmed));
      });
    }
  }
}

