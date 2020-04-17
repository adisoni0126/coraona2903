import 'dart:convert';

class Master {
  List<Statewise> statewise;
  List<Tested> tested;

  Master({
    this.statewise,
    this.tested,
  });

  factory Master.fromJson(Map<String, dynamic> json) => Master(
    statewise: List<Statewise>.from(json["statewise"].map((x) => Statewise.fromJson(x))),
    tested: List<Tested>.from(json["tested"].map((x) => Tested.fromJson(x))),
  );
}

class Statewise {
  String active;
  String confirmed;
  String deaths;
  String lastupdatedtime;
  String recovered;
  String state;

  Statewise({
    this.active,
    this.confirmed,
    this.deaths,
    this.lastupdatedtime,
    this.recovered,
    this.state,
  });

  factory Statewise.fromJson(Map<String, dynamic> json) => Statewise(
    active: json["active"],
    confirmed: json["confirmed"],
    deaths: json["deaths"],
    lastupdatedtime: json["lastupdatedtime"],
    recovered: json["recovered"],
    state: json["state"],
  );
}



class Tested {
  String source;
  String testsconductedbyprivatelabs;
  String totalindividualstested;
  String totalpositivecases;
  String totalsamplestested;
  String updatetimestamp;

  Tested({
    this.source,
    this.testsconductedbyprivatelabs,
    this.totalindividualstested,
    this.totalpositivecases,
    this.totalsamplestested,
    this.updatetimestamp,
  });

  factory Tested.fromJson(Map<String, dynamic> json) => Tested(
    source: json["source"],
    testsconductedbyprivatelabs: json["testsconductedbyprivatelabs"],
    totalindividualstested: json["totalindividualstested"],
    totalpositivecases: json["totalpositivecases"],
    totalsamplestested: json["totalsamplestested"],
    updatetimestamp: json["updatetimestamp"],
  );
}
