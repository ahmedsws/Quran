import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran/home/domain/entities/quran.dart';
import 'package:quran/home/domain/repositories/quran_repository.dart';
import 'package:quran/home/infrastrcuture/models/quran_model.dart';
import 'package:quran/home/infrastrcuture/repositories/quran_repo_impl.dart';
import 'package:http/http.dart' as http;

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({QuranRepository quranRepository})
      : quranRepository = quranRepository ?? QuranRepositoryImpl(),
        super(HomeLoading());

  final QuranRepository quranRepository;
  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetHome) {
      yield HomeLoaded(quran: await quranRepository.getQuran());
    }
  }
}
