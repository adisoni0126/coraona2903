// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

class Welcome {
  List<TravelHistory> travelHistory;

  Welcome({
    this.travelHistory,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    travelHistory: List<TravelHistory>.from(json["travel_history"].map((x) => TravelHistory.fromJson(x))),
  );
}

class TravelHistory {
  String cn6Ca;
  Accuracylocation accuracylocation;
  String address;
  String datasource;
  String latlong;
  Modeoftravel modeoftravel;
  String pid;
  String placename;
  String timefrom;
  String timeto;
  Type type;
  String d2Mkx;

  TravelHistory({
    this.cn6Ca,
    this.accuracylocation,
    this.address,
    this.datasource,
    this.latlong,
    this.modeoftravel,
    this.pid,
    this.placename,
    this.timefrom,
    this.timeto,
    this.type,
    this.d2Mkx,
  });

  factory TravelHistory.fromJson(Map<String, dynamic> json) => TravelHistory(
    cn6Ca: json["_cn6ca"],
    accuracylocation: accuracylocationValues.map[json["accuracylocation"]],
    address: json["address"],
    datasource: json["datasource"],
    latlong: json["latlong"],
    modeoftravel: modeoftravelValues.map[json["modeoftravel"]],
    pid: json["pid"],
    placename: json["placename"],
    timefrom: json["timefrom"],
    timeto: json["timeto"],
    type: typeValues.map[json["type"]],
    d2Mkx: json["_d2mkx"] == null ? null : json["_d2mkx"],
  );
}

enum Accuracylocation { EMPTY, APPROXIMATE, ACCURATE }

final accuracylocationValues = EnumValues({
  "Accurate": Accuracylocation.ACCURATE,
  "Approximate": Accuracylocation.APPROXIMATE,
  "": Accuracylocation.EMPTY
});

enum Modeoftravel { EMPTY, TAXI, AMBULANCE, AUTORIKSHAW, MANGALA_EXPRESS_SLEEPER, AIR_INDIA_FLIGHT_NO_AI_960_JEDDAH_TO_KARIPUR, AUTOCAB, BUS, PRIVATE_CAR, FLIGHT, BUS_BENZY_TRAVELS, CAR }

final modeoftravelValues = EnumValues({
  "Air India Flight No. AI 960 (Jeddah to Karipur)": Modeoftravel.AIR_INDIA_FLIGHT_NO_AI_960_JEDDAH_TO_KARIPUR,
  "Ambulance": Modeoftravel.AMBULANCE,
  "Autocab": Modeoftravel.AUTOCAB,
  "Autorikshaw": Modeoftravel.AUTORIKSHAW,
  "Bus": Modeoftravel.BUS,
  "Bus(Benzy Travels)": Modeoftravel.BUS_BENZY_TRAVELS,
  "Car": Modeoftravel.CAR,
  "": Modeoftravel.EMPTY,
  "Flight": Modeoftravel.FLIGHT,
  "Mangala Express, Sleeper": Modeoftravel.MANGALA_EXPRESS_SLEEPER,
  "Private car": Modeoftravel.PRIVATE_CAR,
  "Taxi": Modeoftravel.TAXI
});

enum Type { PLACE_VISIT, TRAVEL, PLACEVISIT, TYPE_TRAVEL, EMPTY }

final typeValues = EnumValues({
  "": Type.EMPTY,
  "placevisit": Type.PLACEVISIT,
  "placeVisit": Type.PLACE_VISIT,
  "travel": Type.TRAVEL,
  "Travel": Type.TYPE_TRAVEL
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
