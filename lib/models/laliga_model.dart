import 'dart:convert';

LaligaModel laligaModelFromJson(String str) =>
    LaligaModel.fromJson(json.decode(str));
String laligaModelToJson(LaligaModel data) => json.encode(data.toJson());

class LaligaModel {
  final List<Team>? teams;

  LaligaModel({this.teams});

  factory LaligaModel.fromJson(Map<String, dynamic> json) => LaligaModel(
    teams: json["teams"] == null
        ? []
        : List<Team>.from(json["teams"]!.map((x) => Team.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "teams": teams == null
        ? []
        : List<dynamic>.from(teams!.map((x) => x.toJson())),
  };
}

class Team {
  final String? idTeam;
  final String? strTeam;
  final String? strStadium;
  final String? strBadge;

  Team({this.idTeam, this.strTeam, this.strStadium, this.strBadge});

  factory Team.fromJson(Map<String, dynamic> json) => Team(
    idTeam: json["idTeam"],
    strTeam: json["strTeam"],
    strStadium: json["strStadium"],
    strBadge: json["strBadge"],
  );

  Map<String, dynamic> toJson() => {
    "idTeam": idTeam,
    "strTeam": strTeam,
    "strStadium": strStadium,
    "strBadge": strBadge,
  };
}
