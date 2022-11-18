// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;
 
      return instance;
    });
  } 

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null, 'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello World!`
  String get helloWorld {
    return Intl.message(
      'Hello World!',
      name: 'helloWorld',
      desc: 'The conventional newborn programmer greeting',
      args: [],
    );
  }

  /// `User`
  String get lpUser {
    return Intl.message(
      'User',
      name: 'lpUser',
      desc: '',
      args: [],
    );
  }

  /// `Enter an User.`
  String get lpUserEmpty {
    return Intl.message(
      'Enter an User.',
      name: 'lpUserEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get lpPassword {
    return Intl.message(
      'Password',
      name: 'lpPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter a password`
  String get lpPasswordEmpty {
    return Intl.message(
      'Enter a password',
      name: 'lpPasswordEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get lpBtnLogin {
    return Intl.message(
      'Login',
      name: 'lpBtnLogin',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get apTitle {
    return Intl.message(
      'About',
      name: 'apTitle',
      desc: '',
      args: [],
    );
  }

  /// `Product`
  String get apProduct {
    return Intl.message(
      'Product',
      name: 'apProduct',
      desc: '',
      args: [],
    );
  }

  /// `Model`
  String get apModel {
    return Intl.message(
      'Model',
      name: 'apModel',
      desc: '',
      args: [],
    );
  }

  /// `Device`
  String get apDevice {
    return Intl.message(
      'Device',
      name: 'apDevice',
      desc: '',
      args: [],
    );
  }

  /// `OS Version`
  String get apOsVersion {
    return Intl.message(
      'OS Version',
      name: 'apOsVersion',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get apAppVersion {
    return Intl.message(
      'Version',
      name: 'apAppVersion',
      desc: '',
      args: [],
    );
  }

  /// `Unknown`
  String get apEmptyData {
    return Intl.message(
      'Unknown',
      name: 'apEmptyData',
      desc: '',
      args: [],
    );
  }

  /// `Plans`
  String get hmTitle {
    return Intl.message(
      'Plans',
      name: 'hmTitle',
      desc: '',
      args: [],
    );
  }

  /// `Plan`
  String get hmPlanName {
    return Intl.message(
      'Plan',
      name: 'hmPlanName',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get hmPlanPrice {
    return Intl.message(
      'Price',
      name: 'hmPlanPrice',
      desc: '',
      args: [],
    );
  }

  /// `Duration`
  String get hmPlanDuration {
    return Intl.message(
      'Duration',
      name: 'hmPlanDuration',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}