import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:coraona2903/models/district_state.dart';

class Cities {
  final String state;
  final int confirmed;

  Cities(this.state, this.confirmed);
}

class Covid19Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Covid19ScreenState();
  }
}

class Covid19ScreenState extends State<Covid19Screen> {
  bool isLoading=true;
  var firstObject;
  List<Cities> citilesList = List();
  String districtAPI = 'https://api.covid19india.org/state_district_wise.json';

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      isLoading = true;
    });

    givenFunction();

    setState(() {
      isLoading = false;
    });
  }

  Future givenFunction() async {
    final httpRequest = await http.get(districtAPI);
    final json = jsonDecode(httpRequest.body);
//    IndiaState firstObject = new IndiaState.fromJson(json);
//    print(firstObject.delhi.districtData.eastDelhi.confirmed.toString());
//    print(firstObject.delhi.districtData.)

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

    indiaState.unknown.districtData.forEach((key, value) {
      print('This is the key : ' + key);
      print('Confirmed :' + value.confirmed.toString());
      citilesList.add(Cities(key, value.confirmed));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Covid19'),
      ),
      body: isLoading
          ? Center(child: Text('gaurav'))
          : ListView.separated(
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text(citilesList[index].state,
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                  subtitle: Text(citilesList[index].confirmed.toString()),
                );
              },
              separatorBuilder: (_, __) => Divider(
                    height: 1,
                    color: Colors.green,
                  ),
              itemCount: citilesList.length),
    );
  }
}
