import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:countyapp/domain/data_manager.dart';
import 'package:countyapp/data/entities/country_response.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    final DataManager _dataManager = DataManager();

    if (event is InitialHomePageEvent) {
      List<Country> country = await _dataManager.getCountry().catchError((e) => print(e));
      yield ResponseSuccessState(contry: country);
    }
  }
}
