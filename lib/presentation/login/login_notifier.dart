import 'package:cuy_test/data/datasource/exception/auth_exception.dart';
import 'package:cuy_test/domain/repository/login_api_repository.dart';
import 'package:cuy_test/domain/request/login_request.dart';
import 'package:flutter/material.dart';

class LoginNotifier with ChangeNotifier {
  final LoginApiReapositoryInterface apiReapositoryInterface;
  LoginNotifier({required this.apiReapositoryInterface});
  String _error = '';
  String _token = '';
  bool _isLoading = false;

  Future<bool> login(
      {required String user,
      required String password,
      required String token}) async {
    _isLoading = true;
    notifyListeners();
    try {
      final loginResponse = await apiReapositoryInterface.login(
        LoginRequest(user, password, token),
      );
      _token = loginResponse.oauthToken!;
      _isLoading = false;
      notifyListeners();
      return true;
    } on AuthException catch (error) {
      _error = error.cause;

      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  String get getErrorMsg => _error;

  String get getToken => _token;
  bool get getLoading => _isLoading;
}
