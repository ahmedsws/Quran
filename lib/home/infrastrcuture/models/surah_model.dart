import 'package:quran/home/domain/entities/surah.dart';

import 'ayah_model.dart';

class SurahModel extends Surah {
  const SurahModel({
    int? number,
    String? name,
    String? englishName,
    String? englishNameTranslation,
    String? revelationType,
    List<AyahModel>? ayahs,
  }) : super(
          number: number,
          englishName: englishName,
          englishNameTranslation: englishNameTranslation,
          revelationType: revelationType,
          ayahs: ayahs,
        );

  SurahModel.fromJson(Map<String, dynamic> json)
      : super(
          number: json['number'] ?? 0,
          name: json['name'],
          englishName: json['englishName'],
          englishNameTranslation: json['englishNameTranslation'],
          revelationType: json['revelationType'],
          ayahs: List.from(json['ayahs'])
              .map((ayah) => AyahModel.fromJson(ayah))
              .toList(),
        );
}
