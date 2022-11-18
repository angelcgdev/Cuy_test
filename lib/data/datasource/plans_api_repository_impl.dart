import 'package:cuy_test/data/apis.dart';
import 'package:cuy_test/data/datasource/exception/auth_exception.dart';
import 'package:cuy_test/domain/repository/plans_api_repository.dart';
import 'package:cuy_test/domain/request/plans_request.dart';
import 'package:cuy_test/domain/response/plans_response.dart';
import 'package:http/http.dart' as http;

class PlansApiRepositoryImpl extends PlansApiReapositoryInterface {
  @override
  Future<PlansReponse> getAll(PlansRequest data) async {
    final Map<String, String> headers = {
      'Authorization': 'Bearer ${data.oauthToken}'
    };

    final response = await http.get(Uri.parse(Apis.plans), headers: headers);
    final responseDecode = plansReponseFromJson(response.body);
    if (responseDecode.status == 'success') {
      return responseDecode;
    }
    throw AuthException(responseDecode.message);
  }
}
