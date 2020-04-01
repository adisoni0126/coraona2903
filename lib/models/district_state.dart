//class IndiaState {
//  Delhi delhi;
//
//  IndiaState({
//    this.delhi,
//  });
//
//  factory IndiaState.fromJson(Map<String, dynamic> json) => IndiaState(
//    delhi: Delhi.fromJson(json["Delhi"]),
//  );
//}
//
//class Delhi {
//  DelhiDistrictData districtData;
//
//  Delhi({
//    this.districtData,
//  });
//
//  factory Delhi.fromJson(Map<String, dynamic> json) => Delhi(
//    districtData: DelhiDistrictData.fromJson(json["districtData"]),
//  );
//}
//
////class Delhi {
////  Map<String, DistrictDatum> districtData;
////
////  Delhi({
////    this.districtData,
////  });
////
////  factory Delhi.fromJson(Map<String, dynamic> json) => Delhi(
////    districtData: Map.from(json["districtData"]).map((k, v) => MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
////  );
////
////  Map<String, dynamic> toJson() => {
////    "districtData": Map.from(districtData).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
////  };
////}
////class DistrictDatum {
////  int confirmed;
////  String lastupdatedtime;
////
////  DistrictDatum({
////    this.confirmed,
////    this.lastupdatedtime,
////  });
////
////  factory DistrictDatum.fromJson(Map<String, dynamic> json) => DistrictDatum(
////    confirmed: json["confirmed"],
////    lastupdatedtime: json["lastupdatedtime"],
////  );
////
////  Map<String, dynamic> toJson() => {
////    "confirmed": confirmed,
////    "lastupdatedtime": lastupdatedtime,
////  };
////}
//
//class DelhiDistrictData {
//  DelhiValue eastDelhi;
//  DelhiValue southWestDelhi;
//  DelhiValue westDelhi;
//  DelhiValue delhi;
//  DelhiValue southDelhi;
//  DelhiValue northEastDelhi;
//  DelhiValue northDelhi;
//  DelhiValue northWestDelhi;
//  DelhiValue unknown;
//  DelhiValue newDelhi;
//
//  DelhiDistrictData({
//    this.eastDelhi,
//    this.southWestDelhi,
//    this.westDelhi,
//    this.delhi,
//    this.southDelhi,
//    this.northEastDelhi,
//    this.northDelhi,
//    this.northWestDelhi,
//    this.unknown,
//    this.newDelhi,
//  });
//
//  factory DelhiDistrictData.fromJson(Map<String, dynamic> json) => DelhiDistrictData(
//    eastDelhi: DelhiValue.fromJson(json["East Delhi"]),
//    southWestDelhi: DelhiValue.fromJson(json["South West Delhi"]),
//    westDelhi: DelhiValue.fromJson(json["West Delhi"]),
//    delhi: DelhiValue.fromJson(json["Delhi"]),
//    southDelhi: DelhiValue.fromJson(json["South Delhi"]),
//    northEastDelhi: DelhiValue.fromJson(json["North East Delhi"]),
//    northDelhi: DelhiValue.fromJson(json["North Delhi"]),
//    northWestDelhi: DelhiValue.fromJson(json["North West Delhi"]),
//    newDelhi: DelhiValue.fromJson(json["New Delhi"]),
//    unknown: DelhiValue.fromJson(json["Unknown"]),
//  );
//}
//
//class DelhiValue {
//  int confirmed;
//  String lastupdatedtime;
//  Delta delta;
//
//
//  DelhiValue({
//    this.confirmed,
//    this.lastupdatedtime,
//    this.delta,
//  });
//
//  factory DelhiValue.fromJson(Map<String, dynamic> json) => DelhiValue(
//    confirmed: json["confirmed"],
//    lastupdatedtime: json["lastupdatedtime"],
//    delta: Delta.fromJson(json['delta']),
//  );
//}
//
//
//class Delta {
//  int confirmed;
//
//  Delta({
//    this.confirmed,
//  });
//
//  factory Delta.fromJson(Map<String, dynamic> json) =>
//      Delta(
//        confirmed: json["confirmed"],
//      );
//
//  Map<String, dynamic> toJson() =>
//      {
//        "confirmed": confirmed,
//      };
//}

class IndiaState {
  Delhi delhi;

  IndiaState({
    this.delhi,
  });

  factory IndiaState.fromJson(Map<String, dynamic> json) => IndiaState(
    delhi: Delhi.fromJson(json["Delhi"]),
  );

  Map<String, dynamic> toJson() => {
    "Delhi": delhi.toJson(),
  };
}

class Delhi {
  Map<String, DistrictDatum> districtData;

  Delhi({
    this.districtData,
  });

  factory Delhi.fromJson(Map<String, dynamic> json) => Delhi(
    districtData: Map.from(json["districtData"]).map((k, v) => MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "districtData": Map.from(districtData).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
  };
}

class DistrictDatum {
  int confirmed;
  String lastupdatedtime;

  DistrictDatum({
    this.confirmed,
    this.lastupdatedtime,
  });

  factory DistrictDatum.fromJson(Map<String, dynamic> json) => DistrictDatum(
    confirmed: json["confirmed"],
    lastupdatedtime: json["lastupdatedtime"],
  );

  Map<String, dynamic> toJson() => {
    "confirmed": confirmed,
    "lastupdatedtime": lastupdatedtime,
  };
}