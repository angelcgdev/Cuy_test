import 'package:cuy_test/domain/request/plans_request.dart';
import 'package:cuy_test/domain/response/plans_response.dart';

abstract class PlansApiReapositoryInterface {
  Future<PlansReponse> getAll(PlansRequest data);
}
