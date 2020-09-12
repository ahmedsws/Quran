import 'package:quran/home/domain/entities/surah.dart';

import 'ayah_model.dart';

class SurahModel extends Surah {
  const SurahModel(
      {this.number,
      this.name,
      this.englishName,
      this.englishNameTranslation,
      this.revelationType,
      this.ayahs});
  final int number;
  final String name, englishName, englishNameTranslation, revelationType;
  final List<AyahModel> ayahs;
}
