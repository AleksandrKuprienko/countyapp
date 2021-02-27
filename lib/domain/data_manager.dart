import 'package:countyapp/data/entities/country_response.dart';
import 'package:countyapp/data/rest/rest_provider.dart';

class DataManager {
  final _restProvider = RestProvider();

  Future<List<Country>> getCountry() => _restProvider.getCountry();
}
