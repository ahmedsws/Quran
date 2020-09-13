part of 'home_bloc.dart';

@immutable
abstract class HomeState {
  const HomeState({this.quran});
  final Quran quran;
}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  const HomeLoaded({Quran quran}) : super(quran: quran);
}
