import 'dart:convert';

BasicLoginResponse basicLoginResponseFromJson(String str) =>
    BasicLoginResponse.fromJson(json.decode(str));

String basicLoginResponseToJson(BasicLoginResponse data) =>
    json.encode(data.toJson());

class BasicLoginResponse {
  BasicLoginResponse({
    required this.code,
    required this.status,
    required this.message,
    this.oauthToken,
  });

  final String code;
  final String status;
  final String message;
  final String? oauthToken;

  factory BasicLoginResponse.fromJson(Map<String, dynamic> json) =>
      BasicLoginResponse(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        oauthToken: json["oauthToken"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "oauthToken": oauthToken,
      };
}
