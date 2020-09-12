import 'ayah.dart';

class Surah {
  Surah(
      {this.number,
      this.name,
      this.englishName,
      this.englishNameTranslation,
      this.revelationType,
      this.ayahs});
  final int number;
  final String name, englishName, englishNameTranslation, revelationType;
  final List<Ayah> ayahs;
}
