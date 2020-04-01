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
  bool isLoading = false;
  var firstObject;
  List<Cities> citilesList=List();
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
     indiaState.delhi.districtData.forEach((key, value) {
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
      body: Center(child: Text('gaurav')),
    );
  }
}


