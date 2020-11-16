import 'dart:convert';

Software softwareFromJson(String str) => Software.fromJson(json.decode(str));

String softwareToJson(Software data) => json.encode(data.toJson());

class Software {
  Software({
    this.version,
    this.earlyAccess,
    this.createdAt,
    this.updatedAt,
    this.commit,
    this.totalCount,
    this.count,
    this.usCount,
    this.euCount,
    this.percentage,
    this.features,
    this.firstSpotted,
    this.year,
    this.week,
    this.major,
    this.minor,
    this.parent,
  });

  String version;
  int earlyAccess;
  DateTime createdAt;
  DateTime updatedAt;
  String commit;
  int totalCount;
  int count;
  int usCount;
  int euCount;
  double percentage;
  List<String> features;
  DateTime firstSpotted;
  String year;
  String week;
  String major;
  String minor;
  dynamic parent;

  factory Software.fromJson(Map<String, dynamic> json) => Software(
        version: json['version'],
        earlyAccess: json['early_access'],
        createdAt: DateTime.parse(json['created_at']),
        updatedAt: DateTime.parse(json['updated_at']),
        commit: json['commit'],
        totalCount: json['totalCount'],
        count: json['count'],
        usCount: json['usCount'],
        euCount: json['euCount'],
        percentage: json['percentage'].toDouble(),
        features: List<String>.from(json['features'].map((x) => x)),
        firstSpotted: DateTime.parse(json['firstSpotted']),
        year: json['year'],
        week: json['week'],
        major: json['major'],
        minor: json['minor'],
        parent: json['parent'] == null ? null : json['parent'],
      );

  Map<String, dynamic> toJson() => {
        'version': version,
        'early_access': earlyAccess,
        'created_at': createdAt.toIso8601String(),
        'updated_at': updatedAt.toIso8601String(),
        'commit': commit,
        'totalCount': totalCount,
        'count': count,
        'usCount': usCount,
        'euCount': euCount,
        'percentage': percentage,
        'features': List<dynamic>.from(features.map((x) => x)),
        'firstSpotted': firstSpotted.toIso8601String(),
        'year': year,
        'week': week,
        'major': major,
        'minor': minor,
        'parent': parent == null ? null : parent,
      };

  @override
  String toString() {
    return 'Version: ${version}\nTotalCount: ${totalCount}\nCreatedAt: ${createdAt}';
  }
}
