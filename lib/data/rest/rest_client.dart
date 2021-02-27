import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:countyapp/data/entities/country_response.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://restcountries.eu/rest/v2/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/region/europe")
  Future<List<Country>> getCountry();
}
