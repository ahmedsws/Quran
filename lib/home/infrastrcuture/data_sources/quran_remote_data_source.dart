import 'package:quran/home/infrastrcuture/models/quran_model.dart';

abstract class QuranRemoteDataSource {
  Future<QuranModel> getQuran();
}
