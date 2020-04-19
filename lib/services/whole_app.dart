import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:coraona2903/models/class_short_statewise_data.dart';
import 'package:coraona2903/models/testcount_statewise_stats.dart';

class WholeApp {
  String testCountStatewiseStats = 'https://api.covid19india.org/data.json';

  List<ShortStatewiseData> shortList = List();

  Future givenFunction() async {
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
}
