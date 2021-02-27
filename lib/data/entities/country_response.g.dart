// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map json) {
  return Country(
    name: json['name'] as String,
    topLevelDomain:
        (json['topLevelDomain'] as List)?.map((e) => e as String)?.toList(),
    alpha2Code: json['alpha2Code'] as String,
    alpha3Code: json['alpha3Code'] as String,
    callingCodes:
        (json['callingCodes'] as List)?.map((e) => e as String)?.toList(),
    capital: json['capital'] as String,
    altSpellings:
        (json['altSpellings'] as List)?.map((e) => e as String)?.toList(),
    population: json['population'] as int,
    latlng:
        (json['latlng'] as List)?.map((e) => (e as num)?.toDouble())?.toList(),
    demonym: json['demonym'] as String,
    area: (json['area'] as num)?.toDouble(),
    gini: (json['gini'] as num)?.toDouble(),
    timezones: (json['timezones'] as List)?.map((e) => e as String)?.toList(),
    borders: (json['borders'] as List)?.map((e) => e as String)?.toList(),
    nativeName: json['nativeName'] as String,
    numericCode: json['numericCode'] as String,
    currencies: (json['currencies'] as List)
        ?.map((e) => e == null
            ? null
            : Currency.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    languages: (json['languages'] as List)
        ?.map((e) => e == null
            ? null
            : Language.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    translations: json['translations'] == null
        ? null
        : Translations.fromJson((json['translations'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          )),
    flag: json['flag'] as String,
    regionalBlocs: (json['regionalBlocs'] as List)
        ?.map((e) => e == null
            ? null
            : RegionalBloc.fromJson((e as Map)?.map(
                (k, e) => MapEntry(k as String, e),
              )))
        ?.toList(),
    cioc: json['cioc'] as String,
  );
}

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'topLevelDomain': instance.topLevelDomain,
      'alpha2Code': instance.alpha2Code,
      'alpha3Code': instance.alpha3Code,
      'callingCodes': instance.callingCodes,
      'capital': instance.capital,
      'altSpellings': instance.altSpellings,
      'population': instance.population,
      'latlng': instance.latlng,
      'demonym': instance.demonym,
      'area': instance.area,
      'gini': instance.gini,
      'timezones': instance.timezones,
      'borders': instance.borders,
      'nativeName': instance.nativeName,
      'numericCode': instance.numericCode,
      'currencies': instance.currencies,
      'languages': instance.languages,
      'translations': instance.translations,
      'flag': instance.flag,
      'regionalBlocs': instance.regionalBlocs,
      'cioc': instance.cioc,
    };

Currency _$CurrencyFromJson(Map json) {
  return Currency(
    code: json['code'] as String,
    name: json['name'] as String,
    symbol: json['symbol'] as String,
  );
}

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'symbol': instance.symbol,
    };

Language _$LanguageFromJson(Map json) {
  return Language(
    iso6391: json['iso6391'] as String,
    iso6392: json['iso6392'] as String,
    name: json['name'] as String,
    nativeName: json['nativeName'] as String,
  );
}

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'iso6391': instance.iso6391,
      'iso6392': instance.iso6392,
      'name': instance.name,
      'nativeName': instance.nativeName,
    };

RegionalBloc _$RegionalBlocFromJson(Map json) {
  return RegionalBloc(
    otherAcronyms:
        (json['otherAcronyms'] as List)?.map((e) => e as String)?.toList(),
    otherNames: json['otherNames'] as List,
  );
}

Map<String, dynamic> _$RegionalBlocToJson(RegionalBloc instance) =>
    <String, dynamic>{
      'otherAcronyms': instance.otherAcronyms,
      'otherNames': instance.otherNames,
    };

Translations _$TranslationsFromJson(Map json) {
  return Translations(
    de: json['de'] as String,
    es: json['es'] as String,
    fr: json['fr'] as String,
    ja: json['ja'] as String,
    it: json['it'] as String,
    br: json['br'] as String,
    pt: json['pt'] as String,
    nl: json['nl'] as String,
    hr: json['hr'] as String,
    fa: json['fa'] as String,
  );
}

Map<String, dynamic> _$TranslationsToJson(Translations instance) =>
    <String, dynamic>{
      'de': instance.de,
      'es': instance.es,
      'fr': instance.fr,
      'ja': instance.ja,
      'it': instance.it,
      'br': instance.br,
      'pt': instance.pt,
      'nl': instance.nl,
      'hr': instance.hr,
      'fa': instance.fa,
    };
