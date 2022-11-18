import 'package:cuy_test/data/datasource/exception/auth_exception.dart';
import 'package:cuy_test/domain/repository/login_api_repository.dart';
import 'package:cuy_test/domain/request/basic_login_request.dart';
import 'package:flutter/material.dart';

class MainNotifier with ChangeNotifier {
  final LoginApiReapositoryInterface apiReapositoryInterface;
  MainNotifier({required this.apiReapositoryInterface});
  String _error = '';
  String _token = '';

  Future<bool> basicAuth() async {
    try {
      final loginResponse = await apiReapositoryInterface
          .basicLogin(const BasicLoginRequest('sys@cuy.pe', '123456'));
      _token = loginResponse.oauthToken!;
      return true;
    } on AuthException catch (error) {
      _error = error.cause;
      return false;
    }
  }

  String get getErrorMsg => _error;
  String get getBasicToken => _token;
}
