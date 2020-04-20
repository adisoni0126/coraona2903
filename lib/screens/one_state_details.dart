import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:coraona2903/services/whole_app.dart';
import 'package:coraona2903/models/class_citites.dart';

class OneStateDetails extends StatefulWidget {
//  static const routeName = '/oneStateDetails';
  String passedState;
  OneStateDetails({this.passedState});

  @override
  _OneStateDetailsState createState() => _OneStateDetailsState();
}

class _OneStateDetailsState extends State<OneStateDetails> {
  bool _isLoading = false;

  WholeApp get service => GetIt.I<WholeApp>();
  List<Cities> citilesList = List();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _givenFunction();
  }



  _givenFunction() async {
    setState(() {
      _isLoading = true;
    });
    await service.districtWiseStats(widget.passedState);
    citilesList = service.citilesList;

    setState(() {
      _isLoading = false;
    });

  }

  @override
  Widget build(BuildContext context) {
//   final passedState = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.passedState),
      ),
      body: Builder(builder: (_) {
        if (_isLoading) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
            itemCount: citilesList.length,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(10),
                elevation: 5,
                child: Column(children: <Widget>[
                  Text(citilesList[index].state),
                  Text('Active: ${citilesList[index].confirmed.toString()}')
                ],),
              );
            });
      }),
    );
  }
}
