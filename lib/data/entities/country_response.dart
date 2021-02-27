import 'package:json_annotation/json_annotation.dart';

part 'country_response.g.dart';

@JsonSerializable(anyMap: true)
class Country {
  Country({
    this.name,
    this.topLevelDomain,
    this.alpha2Code,
    this.alpha3Code,
    this.callingCodes,
    this.capital,
    this.altSpellings,
    this.population,
    this.latlng,
    this.demonym,
    this.area,
    this.gini,
    this.timezones,
    this.borders,
    this.nativeName,
    this.numericCode,
    this.currencies,
    this.languages,
    this.translations,
    this.flag,
    this.regionalBlocs,
    this.cioc,
  });

  final String name;
  final List<String> topLevelDomain;
  final String alpha2Code;
  final String alpha3Code;
  final List<String> callingCodes;
  final String capital;
  final List<String> altSpellings;
  final int population;
  final List<double> latlng;
  final String demonym;
  final double area;
  final double gini;
  final List<String> timezones;
  final List<String> borders;
  final String nativeName;
  final String numericCode;
  final List<Currency> currencies;
  final List<Language> languages;
  final Translations translations;
  final String flag;
  final List<RegionalBloc> regionalBlocs;
  final String cioc;

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
  Map<String, dynamic> toJson() => _$CountryToJson(this);
}

@JsonSerializable(anyMap: true)
class Currency {
  Currency({
    this.code,
    this.name,
    this.symbol,
  });

  final String code;
  final String name;
  final String symbol;

  factory Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);
  Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}

@JsonSerializable(anyMap: true)
class Language {
  Language({
    this.iso6391,
    this.iso6392,
    this.name,
    this.nativeName,
  });

  final String iso6391;
  final String iso6392;
  final String name;
  final String nativeName;

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
  Map<String, dynamic> toJson() => _$LanguageToJson(this);
}

@JsonSerializable(anyMap: true)
class RegionalBloc {
  RegionalBloc({
    this.otherAcronyms,
    this.otherNames,
  });

  final List<String> otherAcronyms;
  final List<dynamic> otherNames;

  factory RegionalBloc.fromJson(Map<String, dynamic> json) => _$RegionalBlocFromJson(json);
  Map<String, dynamic> toJson() => _$RegionalBlocToJson(this);
}

@JsonSerializable(anyMap: true)
class Translations {
  Translations({
    this.de,
    this.es,
    this.fr,
    this.ja,
    this.it,
    this.br,
    this.pt,
    this.nl,
    this.hr,
    this.fa,
  });

  final String de;
  final String es;
  final String fr;
  final String ja;
  final String it;
  final String br;
  final String pt;
  final String nl;
  final String hr;
  final String fa;

  factory Translations.fromJson(Map<String, dynamic> json) => _$TranslationsFromJson(json);
  Map<String, dynamic> toJson() => _$TranslationsToJson(this);
}
