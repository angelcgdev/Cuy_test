import 'dart:convert';

DeviceInfo deviceInfoFromJson(String str) =>
    DeviceInfo.fromJson(json.decode(str));

String deviceInfoToJson(DeviceInfo data) => json.encode(data.toJson());

class DeviceInfo {
  DeviceInfo({
    required this.product,
    required this.model,
    required this.version,
    required this.device,
  });

  final String product;
  final String model;
  final String version;
  final String device;

  factory DeviceInfo.fromJson(Map<String, dynamic> json) => DeviceInfo(
        product: json["product"],
        model: json["model"],
        version: json["version"],
        device: json["device"],
      );

  Map<String, dynamic> toJson() => {
        "product": product,
        "model": model,
        "version": version,
        "device": device,
      };
}
