part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {
  final BuildContext context;

  HomeEvent({this.context});
}

class InitialHomePageEvent extends HomeEvent {
  InitialHomePageEvent({BuildContext context}) : super(context: context);
}

class ResponseErrorEvent extends HomeEvent {
  ResponseErrorEvent({BuildContext context}) : super(context: context);
}

class ReloadButtonEvent extends HomeEvent {
  ReloadButtonEvent({BuildContext context}) : super(context: context);
}
