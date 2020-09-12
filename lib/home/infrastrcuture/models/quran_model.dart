import 'package:quran/home/domain/entities/quran.dart';

import 'surah_model.dart';

class QuranModel extends Quran {
  QuranModel({this.surahs});
  List<SurahModel> surahs;

  factory QuranModel.fromJson(Map<String, dynamic> json) =>
      QuranModel(surahs: json['surahs']);
}
