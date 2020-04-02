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
//
//  Map<String, dynamic> toJson() => {
//    "Delhi": delhi.toJson(),
//  };
//}
//
//class Delhi {
//  Map<String, DistrictDatum> districtData;
//
//  Delhi({
//    this.districtData,
//  });
//
//  factory Delhi.fromJson(Map<String, dynamic> json) => Delhi(
//    districtData: Map.from(json["districtData"]).map((k, v) => MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
//  );
//
//  Map<String, dynamic> toJson() => {
//    "districtData": Map.from(districtData).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
//  };
//}
//
//class DistrictDatum {
//  int confirmed;
//  String lastupdatedtime;
//
//  DistrictDatum({
//    this.confirmed,
//    this.lastupdatedtime,
//  });
//
//  factory DistrictDatum.fromJson(Map<String, dynamic> json) => DistrictDatum(
//    confirmed: json["confirmed"],
//    lastupdatedtime: json["lastupdatedtime"],
//  );
//
//  Map<String, dynamic> toJson() => {
//    "confirmed": confirmed,
//    "lastupdatedtime": lastupdatedtime,
//  };
//}

class IndiaState {
  Kerala kerala;
  Delhi delhi;
  Telangana telangana;
  Rajasthan rajasthan;
  Haryana haryana;
  UttarPradesh uttarPradesh;
  Ladakh ladakh;
  TamilNadu tamilNadu;
  JammuAndKashmir jammuAndKashmir;
  Karnataka karnataka;
  Maharashtra maharashtra;
  Punjab punjab;
  AndhraPradesh andhraPradesh;
  Uttarakhand uttarakhand;
  Odisha odisha;
  Puducherry puducherry;
  WestBengal westBengal;
  Chandigarh chandigarh;
  Chhattisgarh chhattisgarh;
  Gujarat gujarat;
  HimachalPradesh himachalPradesh;
  MadhyaPradesh madhyaPradesh;
  Bihar bihar;
  Manipur manipur;
  Mizoram mizoram;
  Goa goa;
  AndamanAndNicobarIslands andamanAndNicobarIslands;
  Jharkhand jharkhand;
  Assam assam;
  Unknown unknown;

  IndiaState({
    this.kerala,
    this.delhi,
    this.telangana,
    this.rajasthan,
    this.haryana,
    this.uttarPradesh,
    this.ladakh,
    this.tamilNadu,
    this.jammuAndKashmir,
    this.karnataka,
    this.maharashtra,
    this.punjab,
    this.andhraPradesh,
    this.uttarakhand,
    this.odisha,
    this.puducherry,
    this.westBengal,
    this.chandigarh,
    this.chhattisgarh,
    this.gujarat,
    this.himachalPradesh,
    this.madhyaPradesh,
    this.bihar,
    this.manipur,
    this.mizoram,
    this.goa,
    this.andamanAndNicobarIslands,
    this.jharkhand,
    this.assam,
    this.unknown,
  });

  factory IndiaState.fromJson(Map<String, dynamic> json) => IndiaState(
        kerala: Kerala.fromJson(json["Kerala"]),
        delhi: Delhi.fromJson(json["Delhi"]),
        telangana: Telangana.fromJson(json["Telangana"]),
        rajasthan: Rajasthan.fromJson(json["Rajasthan"]),
        haryana: Haryana.fromJson(json["Haryana"]),
        uttarPradesh: UttarPradesh.fromJson(json["Uttar Pradesh"]),
        ladakh: Ladakh.fromJson(json["Ladakh"]),
        tamilNadu: TamilNadu.fromJson(json["Tamil Nadu"]),
        jammuAndKashmir: JammuAndKashmir.fromJson(json["Jammu and Kashmir"]),
        karnataka: Karnataka.fromJson(json["Karnataka"]),
        maharashtra: Maharashtra.fromJson(json["Maharashtra"]),
        punjab: Punjab.fromJson(json["Punjab"]),
        andhraPradesh: AndhraPradesh.fromJson(json["Andhra Pradesh"]),
        uttarakhand: Uttarakhand.fromJson(json["Uttarakhand"]),
        odisha: Odisha.fromJson(json["Odisha"]),
        puducherry: Puducherry.fromJson(json["Puducherry"]),
        westBengal: WestBengal.fromJson(json["West Bengal"]),
        chandigarh: Chandigarh.fromJson(json["Chandigarh"]),
        chhattisgarh: Chhattisgarh.fromJson(json["Chhattisgarh"]),
        gujarat: Gujarat.fromJson(json["Gujarat"]),
        himachalPradesh: HimachalPradesh.fromJson(json["Himachal Pradesh"]),
        madhyaPradesh: MadhyaPradesh.fromJson(json["Madhya Pradesh"]),
        bihar: Bihar.fromJson(json["Bihar"]),
        manipur: Manipur.fromJson(json["Manipur"]),
        mizoram: Mizoram.fromJson(json["Mizoram"]),
        goa: Goa.fromJson(json["Goa"]),
        andamanAndNicobarIslands: AndamanAndNicobarIslands.fromJson(
            json["Andaman and Nicobar Islands"]),
        jharkhand: Jharkhand.fromJson(json["Jharkhand"]),
        assam: Assam.fromJson(json["Assam"]),
        unknown: Unknown.fromJson(json["Unknown"]),
      );
}

class Kerala {
  Map<String, DistrictDatum> districtData;

  Kerala({
    this.districtData,
  });

  factory Kerala.fromJson(Map<String, dynamic> json) => Kerala(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //1

class Delhi {
  Map<String, DistrictDatum> districtData;

  Delhi({
    this.districtData,
  });

  factory Delhi.fromJson(Map<String, dynamic> json) => Delhi(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //2

class Telangana {
  Map<String, DistrictDatum> districtData;

  Telangana({
    this.districtData,
  });

  factory Telangana.fromJson(Map<String, dynamic> json) => Telangana(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //3

class Rajasthan {
  Map<String, DistrictDatum> districtData;

  Rajasthan({
    this.districtData,
  });

  factory Rajasthan.fromJson(Map<String, dynamic> json) => Rajasthan(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //4

class Haryana {
  Map<String, DistrictDatum> districtData;

  Haryana({
    this.districtData,
  });

  factory Haryana.fromJson(Map<String, dynamic> json) => Haryana(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //5

class UttarPradesh {
  Map<String, DistrictDatum> districtData;

  UttarPradesh({
    this.districtData,
  });

  factory UttarPradesh.fromJson(Map<String, dynamic> json) => UttarPradesh(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //6

class Ladakh {
  Map<String, DistrictDatum> districtData;

  Ladakh({
    this.districtData,
  });

  factory Ladakh.fromJson(Map<String, dynamic> json) => Ladakh(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //7

class TamilNadu {
  Map<String, DistrictDatum> districtData;

  TamilNadu({
    this.districtData,
  });

  factory TamilNadu.fromJson(Map<String, dynamic> json) => TamilNadu(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //8

class JammuAndKashmir {
  Map<String, DistrictDatum> districtData;

  JammuAndKashmir({
    this.districtData,
  });

  factory JammuAndKashmir.fromJson(Map<String, dynamic> json) =>
      JammuAndKashmir(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //9

class Karnataka {
  Map<String, DistrictDatum> districtData;

  Karnataka({
    this.districtData,
  });

  factory Karnataka.fromJson(Map<String, dynamic> json) => Karnataka(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //10

class Maharashtra {
  Map<String, DistrictDatum> districtData;

  Maharashtra({
    this.districtData,
  });

  factory Maharashtra.fromJson(Map<String, dynamic> json) => Maharashtra(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //11

class Punjab {
  Map<String, DistrictDatum> districtData;

  Punjab({
    this.districtData,
  });

  factory Punjab.fromJson(Map<String, dynamic> json) => Punjab(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //12

class AndhraPradesh {
  Map<String, DistrictDatum> districtData;

  AndhraPradesh({
    this.districtData,
  });

  factory AndhraPradesh.fromJson(Map<String, dynamic> json) => AndhraPradesh(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //13

class Uttarakhand {
  Map<String, DistrictDatum> districtData;

  Uttarakhand({
    this.districtData,
  });

  factory Uttarakhand.fromJson(Map<String, dynamic> json) => Uttarakhand(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //14

class Odisha {
  Map<String, DistrictDatum> districtData;

  Odisha({
    this.districtData,
  });

  factory Odisha.fromJson(Map<String, dynamic> json) => Odisha(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //15

class Puducherry {
  Map<String, DistrictDatum> districtData;

  Puducherry({
    this.districtData,
  });

  factory Puducherry.fromJson(Map<String, dynamic> json) => Puducherry(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //16

class WestBengal {
  Map<String, DistrictDatum> districtData;

  WestBengal({
    this.districtData,
  });

  factory WestBengal.fromJson(Map<String, dynamic> json) => WestBengal(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //17

class Chandigarh {
  Map<String, DistrictDatum> districtData;

  Chandigarh({
    this.districtData,
  });

  factory Chandigarh.fromJson(Map<String, dynamic> json) => Chandigarh(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //18

class Chhattisgarh {
  Map<String, DistrictDatum> districtData;

  Chhattisgarh({
    this.districtData,
  });

  factory Chhattisgarh.fromJson(Map<String, dynamic> json) => Chhattisgarh(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //19

class Gujarat {
  Map<String, DistrictDatum> districtData;

  Gujarat({
    this.districtData,
  });

  factory Gujarat.fromJson(Map<String, dynamic> json) => Gujarat(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //20

class HimachalPradesh {
  Map<String, DistrictDatum> districtData;

  HimachalPradesh({
    this.districtData,
  });

  factory HimachalPradesh.fromJson(Map<String, dynamic> json) =>
      HimachalPradesh(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //21

class MadhyaPradesh {
  Map<String, DistrictDatum> districtData;

  MadhyaPradesh({
    this.districtData,
  });

  factory MadhyaPradesh.fromJson(Map<String, dynamic> json) => MadhyaPradesh(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //22

class Bihar {
  Map<String, DistrictDatum> districtData;

  Bihar({
    this.districtData,
  });

  factory Bihar.fromJson(Map<String, dynamic> json) => Bihar(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //23

class Manipur {
  Map<String, DistrictDatum> districtData;

  Manipur({
    this.districtData,
  });

  factory Manipur.fromJson(Map<String, dynamic> json) => Manipur(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //24

class Mizoram {
  Map<String, DistrictDatum> districtData;

  Mizoram({
    this.districtData,
  });

  factory Mizoram.fromJson(Map<String, dynamic> json) => Mizoram(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //25

class Goa {
  Map<String, DistrictDatum> districtData;

  Goa({
    this.districtData,
  });

  factory Goa.fromJson(Map<String, dynamic> json) => Goa(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //26

class AndamanAndNicobarIslands {
  Map<String, DistrictDatum> districtData;

  AndamanAndNicobarIslands({
    this.districtData,
  });

  factory AndamanAndNicobarIslands.fromJson(Map<String, dynamic> json) =>
      AndamanAndNicobarIslands(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //27

class Jharkhand {
  Map<String, DistrictDatum> districtData;

  Jharkhand({
    this.districtData,
  });

  factory Jharkhand.fromJson(Map<String, dynamic> json) => Jharkhand(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //28

class Assam {
  Map<String, DistrictDatum> districtData;

  Assam({
    this.districtData,
  });

  factory Assam.fromJson(Map<String, dynamic> json) => Assam(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //29

class Unknown {
  Map<String, DistrictDatum> districtData;

  Unknown({
    this.districtData,
  });

  factory Unknown.fromJson(Map<String, dynamic> json) => Unknown(
        districtData: Map.from(json["districtData"]).map((k, v) =>
            MapEntry<String, DistrictDatum>(k, DistrictDatum.fromJson(v))),
      );
} //30

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
