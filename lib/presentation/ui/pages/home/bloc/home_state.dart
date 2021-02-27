part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class ResponseSuccessState extends HomeState {
  final List<Country> contry;

  ResponseSuccessState({@required this.contry});
}
