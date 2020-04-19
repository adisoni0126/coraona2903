import 'dart:async';
import 'dart:convert';
import 'package:coraona2903/models/testcount_statewise_stats.dart';
import 'package:coraona2903/services/whole_app.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:coraona2903/models/district_state.dart';
import 'package:coraona2903/models/class_citites.dart';
import 'package:coraona2903/models/class_short_statewise_data.dart';
import 'package:get_it/get_it.dart';

class Covid19Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Covid19ScreenState();
  }
}

class Covid19ScreenState extends State<Covid19Screen> {
  WholeApp get service => GetIt.I<WholeApp>();
  bool isLoading = false;
  var firstObject;

//  List<Cities> citilesList = List();
//2  List<ShortStatewiseData> shortList = List();

  List<ShortStatewiseData> shortList = List();

//  String districtAPI = 'https://api.covid19india.org/state_district_wise.json';
//2  String testCountStatewiseStats = 'https://api.covid19india.org/data.json';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    _givenFunction();
  }

  _givenFunction() async {
    setState(() {
      isLoading = true;
    });

    await service.givenFunction();
    shortList = service.shortList;

    setState(() {
      isLoading = false;
    });

//    final httpRequest = await http.get(districtAPI);
//    final json = jsonDecode(httpRequest.body);

//2    final httpRequestTestCount = await http.get(testCountStatewiseStats);
//2    final testJson = jsonDecode(httpRequestTestCount.body);

//2    Master masterAll = Master.fromJson(testJson);

//    print(masterAll.statewise.where((key) => key.state == 'Delhi'));

//2    masterAll.statewise.forEach(
//2      (key) {
//2        shortList.add(
//2          ShortStatewiseData(
//2            state: key.state,
//2            confirmed: key.confirmed,
//2            active: key.active,
//2            death: key.deaths,
//2          ),
//2        );
//2      },
//2    );

//    IndiaState indiaState = new IndiaState.fromJson(json);
//    indiaState.kerala.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.delhi.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.telangana.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.rajasthan.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.haryana.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.uttarPradesh.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.ladakh.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.tamilNadu.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.jammuAndKashmir.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.karnataka.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.maharashtra.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.punjab.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.andhraPradesh.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.uttarakhand.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.odisha.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.puducherry.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.westBengal.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.chandigarh.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.chhattisgarh.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.gujarat.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.himachalPradesh.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.madhyaPradesh.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.bihar.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.manipur.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.mizoram.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.goa.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.andamanAndNicobarIslands.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.jharkhand.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.assam.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
//
//    indiaState.unknown.districtData.forEach((key, value) {
//      print('This is the key : ' + key);
//      print('Confirmed :' + value.confirmed.toString());
//      citilesList.add(Cities(key, value.confirmed));
//    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Covid19'),
        ),
        body: Builder(builder: (_) {
          if (isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: shortList.length,
            itemBuilder: (BuildContext ctx, index) {
              return Card(
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        shortList[index].confirmed,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple)),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'State: ${shortList[index].state}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.blue),
                        ),
                        Text(
                          'Active:  ${shortList[index].active}',
                          style: TextStyle(color: Colors.green, fontSize: 12),
                        ),
                        Text(
                          'Death:  ${shortList[index].death}',
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        }));
  }
}

//    IndiaState firstObject = new IndiaState.fromJson(json);
//    print(firstObject.delhi.districtData.eastDelhi.confirmed.toString());
//    print(firstObject.delhi.districtData.)

//ListView.separated(
//itemBuilder: (_, index) {
//return ListTile(
//title: Text(shortList[index].state,
//style: TextStyle(color: Theme.of(context).primaryColor)),
//subtitle: Text('Confirmed: ${shortList[index].confirmed}'),
//);
//},
//separatorBuilder: (_, __) => Divider(
//height: 1,
//color: Colors.green,
//),
//itemCount: shortList.length),
