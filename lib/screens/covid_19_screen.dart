import 'dart:async';
import 'dart:convert';
import 'package:coraona2903/models/testcount_statewise_stats.dart';
import 'package:coraona2903/screens/one_state_details.dart';
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

  List<ShortStatewiseData> shortList = List();

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

    await service.stateWiseStats();
    shortList = service.shortList;

    setState(() {
      isLoading = false;
    });

//    print(masterAll.statewise.where((key) => key.state == 'Delhi'));
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
              return InkWell(
                onTap: () {
                  Navigator.of(ctx).push(MaterialPageRoute(builder: (context)=>OneStateDetails(passedState: shortList[index].state,)));
                },
                child: Card(
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
