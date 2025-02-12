import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

add_MongoDBModel welcomeFromJson(String str) =>
    add_MongoDBModel.fromJson(json.decode(str));

String welcomeToJson(add_MongoDBModel data) => json.encode(data.toJson());

class add_MongoDBModel {
  add_MongoDBModel({
    required this.id,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.date,
    required this.gender,
    required this.aadhar,
    required this.religion,
    required this.caste,
    required this.fatherOccupation,
    required this.motherName,
    required this.motherTongue,
    required this.studentPhone1,
    required this.studentPhone2,
    required this.parentPhone,
    required this.studentEmail,
    required this.address,
    required this.qualification,
    required this.schoolOrCollegeName,
    required this.classOrTuitionName,
  });
  ObjectId id;
  String firstName;
  String middleName;
  String lastName;
  String date;
  String gender;
  String aadhar;
  String religion;
  String caste;
  String fatherOccupation;
  String motherName;
  String motherTongue;
  String studentPhone1;
  String studentPhone2;
  String parentPhone;
  String studentEmail;
  String address;
  String qualification;
  String schoolOrCollegeName;
  String classOrTuitionName;

  factory add_MongoDBModel.fromJson(Map<String, dynamic> json) =>
      add_MongoDBModel(
        id: json["_id"],
        firstName: json["firstName"],
        middleName: json["middleName"],
        lastName: json["lastName"],
        date: json["date"],
        gender: json["gender"],
        aadhar: json["aadhar"],
        religion: json["religion"],
        caste: json["caste"],
        fatherOccupation: json["fatherOccupation"],
        motherName: json["motherName"],
        motherTongue: json["motherTongue"],
        studentPhone1: json["studentPhone1"],
        studentPhone2: json["studentPhone2"],
        parentPhone: json["parentPhone"],
        studentEmail: json["studentEmail"],
        address: json["address"],
        qualification: json["qualification"],
        schoolOrCollegeName: json["SchoolOrCollegeName"],
        classOrTuitionName: json["ClassOrTuitionName"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "firstName": firstName,
        "middleName": middleName,
        "lastName": lastName,
        "date": date,
        "gender": gender,
        "aadhar": aadhar,
        "religion": religion,
        "caste": caste,
        "fatherOccupation": fatherOccupation,
        "motherName": motherName,
        "motherTongue": motherTongue,
        "studentPhone1": studentPhone1,
        "studentPhone2": studentPhone2,
        "parentPhone": parentPhone,
        "studentEmail": studentEmail,
        "address": address,
        "qualification": qualification,
        "SchoolOrCollegeName": schoolOrCollegeName,
        "ClassOrTuitionName": classOrTuitionName,
      };
}
