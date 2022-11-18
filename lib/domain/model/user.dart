import 'package:cuy_test/domain/model/company.dart';
import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.id,
    required this.name,
    required this.lastNameFather,
    required this.lastNameMother,
    required this.lastName,
    required this.fullName,
    required this.email,
    required this.dni,
    required this.userIdentificationType,
    required this.businessName,
    required this.address,
    required this.birthday,
    required this.referralCode,
    required this.referralUrl,
    required this.zohoId,
    required this.photo,
    required this.hasPhoto,
    required this.loggedWithPhone,
    required this.region,
    required this.isTourist,
    required this.isLegalRepresentantOfCompany,
    required this.company,
  });

  final int id;
  final String name;
  final String lastNameFather;
  final String lastNameMother;
  final String lastName;
  final String fullName;
  final String email;
  final String dni;
  final int userIdentificationType;
  final String businessName;
  final String address;
  final String birthday;
  final String referralCode;
  final String referralUrl;
  final String zohoId;
  final String photo;
  final bool hasPhoto;
  final String loggedWithPhone;
  final String region;
  final bool isTourist;
  final bool isLegalRepresentantOfCompany;
  final Company company;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        lastNameFather: json["lastNameFather"],
        lastNameMother: json["lastNameMother"],
        lastName: json["lastName"],
        fullName: json["fullName"],
        email: json["email"],
        dni: json["dni"],
        userIdentificationType: json["userIdentificationType"],
        businessName: json["businessName"],
        address: json["address"],
        birthday: json["birthday"],
        referralCode: json["referralCode"],
        referralUrl: json["referralUrl"],
        zohoId: json["zohoId"],
        photo: json["photo"],
        hasPhoto: json["hasPhoto"],
        loggedWithPhone: json["loggedWithPhone"],
        region: json["region"],
        isTourist: json["isTourist"],
        isLegalRepresentantOfCompany: json["isLegalRepresentantOfCompany"],
        company: Company.fromJson(json["company"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "lastNameFather": lastNameFather,
        "lastNameMother": lastNameMother,
        "lastName": lastName,
        "fullName": fullName,
        "email": email,
        "dni": dni,
        "userIdentificationType": userIdentificationType,
        "businessName": businessName,
        "address": address,
        "birthday": birthday,
        "referralCode": referralCode,
        "referralUrl": referralUrl,
        "zohoId": zohoId,
        "photo": photo,
        "hasPhoto": hasPhoto,
        "loggedWithPhone": loggedWithPhone,
        "region": region,
        "isTourist": isTourist,
        "isLegalRepresentantOfCompany": isLegalRepresentantOfCompany,
        "company": company.toJson(),
      };
}
