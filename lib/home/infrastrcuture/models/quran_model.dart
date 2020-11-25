import 'package:quran/home/domain/entities/quran.dart';

import 'surah_model.dart';

class QuranModel extends Quran {
  const QuranModel({List<SurahModel> surahs = const []})
      : super(surahs: surahs);

  QuranModel.fromJson(Map<String, dynamic> json)
      : super(
          surahs: List.from(json['surahs'])
              .map((surah) => SurahModel.fromJson(surah))
              .toList(),
        );
}
