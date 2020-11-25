part of 'home_bloc.dart';

@immutable
abstract class HomeState {
  const HomeState({this.quran = const Quran(surahs: [])});
  final Quran quran;
}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  const HomeLoaded({Quran quran = const Quran(surahs: [])})
      : super(quran: quran);
}
