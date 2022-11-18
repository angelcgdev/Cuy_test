import 'dart:convert';

import 'package:cuy_test/domain/model/device_info.dart';
import 'package:cuy_test/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  static const platformDeviceInfo =
      MethodChannel('com.example.cuy_test/device_info');
  static const platformVersionApp =
      MethodChannel('com.example.cuy_test/version_app');
  DeviceInfo? deviceInfo;
  String version = 'Unknown';

  Future<void> _getDeviceInfo() async {
    try {
      platformDeviceInfo
          .invokeMethod('getDeviceInfo',
              "Pass your payload supported by StandardMethodCodec")
          .then((value) {
        deviceInfo = deviceInfoFromJson(json.encode(value));
        if (mounted) {
          setState(() {});
        }
      });
    } on PlatformException catch (e) {
      print("_getDeviceInfo==>${e.message}");
    }
  }

  Future<void> _getAppInfo() async {
    try {
      platformVersionApp
          .invokeMethod('getVersionApp',
              "Pass your payload supported by StandardMethodCodec")
          .then((value) {
        version = json.decode(json.encode(value))['name'];
        if (mounted) {
          setState(() {});
        }
      });
    } on PlatformException catch (e) {
      print("_getVersionApp==>${e.message}");
    }
  }

  @override
  void initState() {
    _getDeviceInfo();
    _getAppInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(localizations.apTitle)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Default.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "${localizations.apProduct}: ${deviceInfo?.product ?? localizations.apEmptyData}"),
              const SizedBox(height: Default.padding),
              Text(
                  "${localizations.apModel}: ${deviceInfo?.model ?? "Unknown"}"),
              const SizedBox(height: Default.padding),
              Text(
                  "${localizations.apDevice}: ${deviceInfo?.device ?? "Unknown"}"),
              const SizedBox(height: Default.padding),
              Text(
                  "${localizations.apOsVersion}: ${deviceInfo?.version ?? "Unknown"}"),
              const SizedBox(height: Default.padding),
              Text("${localizations.apAppVersion}: $version"),
              const SizedBox(height: Default.padding),
            ],
          ),
        ),
      ),
    );
  }
}
