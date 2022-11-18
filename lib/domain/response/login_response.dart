import 'dart:convert';
import 'package:cuy_test/domain/model/user.dart';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    required this.code,
    required this.status,
    required this.message,
    required this.oauthToken,
    required this.oauthTokenExpiresAt,
    required this.user,
  });

  final String code;
  final String status;
  final String message;
  final String? oauthToken;
  final int? oauthTokenExpiresAt;
  final User? user;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        oauthToken: json["oauthToken"],
        oauthTokenExpiresAt: json["oauthTokenExpiresAt"],
        user: json["data"] != null ? User.fromJson(json["data"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "oauthToken": oauthToken,
        "oauthTokenExpiresAt": oauthTokenExpiresAt,
        "data": user!.toJson(),
      };
}
