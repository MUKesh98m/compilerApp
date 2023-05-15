// To parse this JSON data, do
//
//     final languageListModel = languageListModelFromJson(jsonString);

import 'dart:convert';

LanguageListModel languageListModelFromJson(String str) => LanguageListModel.fromJson(json.decode(str));

String languageListModelToJson(LanguageListModel data) => json.encode(data.toJson());

class LanguageListModel {
  Course course;

  LanguageListModel({
    required this.course,
  });

  factory LanguageListModel.fromJson(Map<String, dynamic> json) => LanguageListModel(
    course: Course.fromJson(json["course"]),
  );

  Map<String, dynamic> toJson() => {
    "course": course.toJson(),
  };
}

class Course {
  List<Datum> data;

  Course({
    required this.data,
  });

  factory Course.fromJson(Map<String, dynamic> json) => Course(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  String id;
  String courseName;
  String image;
  DateTime createdAt;
  DateTime updatedAt;

  Datum({
    required this.id,
    required this.courseName,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    courseName: json["course_name"],
    image: json["image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "course_name": courseName,
    "image": image,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
