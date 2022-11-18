import 'package:cuy_test/domain/model/role.dart';

class Company {
  Company({
    required this.id,
    required this.ruc,
    required this.businessName,
    required this.role,
  });

  final int id;
  final String ruc;
  final String businessName;
  final Role role;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        id: json["id"],
        ruc: json["ruc"],
        businessName: json["businessName"],
        role: Role.fromJson(json["role"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "ruc": ruc,
        "businessName": businessName,
        "role": role.toJson(),
      };
}
