import 'package:dio/dio.dart';

import 'package:countyapp/data/entities/country_response.dart';
import 'package:countyapp/data/rest/rest_client.dart';

class RestProvider {
  RestClient _restClient = RestClient(Dio());

  Future<List<Country>> getCountry() => _restClient.getCountry();
}
