import 'package:quran/home/domain/entities/quran.dart';

abstract class QuranRepository {
  Future<Quran> getQuran();
}
