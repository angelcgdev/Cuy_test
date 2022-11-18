import 'package:cuy_test/data/datasource/exception/plans_exception.dart';
import 'package:cuy_test/domain/model/plans.dart';
import 'package:cuy_test/domain/repository/plans_api_repository.dart';
import 'package:cuy_test/domain/request/plans_request.dart';
import 'package:flutter/material.dart';

class HomeNotifier with ChangeNotifier {
  final PlansApiReapositoryInterface apiReapositoryInterface;

  HomeNotifier({required this.apiReapositoryInterface});

  Future<List<Plan>> getAllPlans(String basicToken) async {
    try {
      final plansResponse =
          await apiReapositoryInterface.getAll(PlansRequest(basicToken));
      return plansResponse.list;
    } on PlansException catch (error) {
      // print(error.cause);
      return throw Exception(error.cause);
    }
  }
}
