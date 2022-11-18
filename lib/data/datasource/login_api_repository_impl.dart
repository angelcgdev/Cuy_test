import 'package:cuy_test/data/apis.dart';
import 'package:cuy_test/data/datasource/exception/auth_exception.dart';
import 'package:cuy_test/domain/repository/login_api_repository.dart';
import 'package:cuy_test/domain/response/basic_login_response.dart';
import 'package:cuy_test/domain/request/basic_login_request.dart';
import 'package:cuy_test/domain/response/login_response.dart';
import 'package:cuy_test/domain/request/login_request.dart';
import 'package:http/http.dart' as http;

class LoginApiRepositoryImpl extends LoginApiReapositoryInterface {
  @override
  Future<BasicLoginResponse> basicLogin(BasicLoginRequest login) async {
    final response =
        await http.post(Uri.parse(Apis.authBasic), body: login.toJson());
    final responseDecode = basicLoginResponseFromJson(response.body);
    if (responseDecode.status == 'success') {
      return responseDecode;
    }
    throw AuthException(responseDecode.message);
  }

  @override
  Future<LoginResponse> login(LoginRequest login) async {
    final Map<String, String> headers = {
      'Authorization': 'Bearer ${login.oauthToken}'
    };

    final response = await http.post(Uri.parse(Apis.auth),
        headers: headers, body: login.toJson());
    final responseDecode = loginResponseFromJson(response.body);
    if (responseDecode.status == 'success') {
      return responseDecode;
    }
    throw AuthException(responseDecode.message);
  }

  @override
  Future<void> logout(String token) {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
