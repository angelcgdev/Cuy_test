import 'package:cuy_test/domain/request/basic_login_request.dart';
import 'package:cuy_test/domain/request/login_request.dart';
import 'package:cuy_test/domain/response/basic_login_response.dart';
import 'package:cuy_test/domain/response/login_response.dart';

abstract class LoginApiReapositoryInterface {
  Future<BasicLoginResponse> basicLogin(BasicLoginRequest login);
  Future<LoginResponse> login(LoginRequest login);
  Future<void> logout(String token);
}
