import 'package:cuy_test/domain/model/plans.dart';
import 'dart:convert';

PlansReponse plansReponseFromJson(String str) =>
    PlansReponse.fromJson(json.decode(str));

String plansReponseToJson(PlansReponse data) => json.encode(data.toJson());

class PlansReponse {
  PlansReponse({
    required this.code,
    required this.status,
    required this.message,
    required this.list,
    required this.appListFree,
  });

  final String code;
  final String status;
  final String message;
  final List<Plan> list;
  final List<dynamic> appListFree;

  factory PlansReponse.fromJson(Map<String, dynamic> json) => PlansReponse(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        list: List<Plan>.from(json["list"].map((x) => Plan.fromJson(x))),
        appListFree: List<dynamic>.from(json["appListFree"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "list": List<dynamic>.from(list.map((x) => x.toJson())),
        "appListFree": List<dynamic>.from(appListFree.map((x) => x)),
      };
}
