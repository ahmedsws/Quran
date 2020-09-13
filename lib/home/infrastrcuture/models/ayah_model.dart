import 'package:quran/home/domain/entities/ayah.dart';

class AyahModel extends Ayah {
  const AyahModel({
    int number,
    numberInSurah,
    juz,
    manzil,
    page,
    ruku,
    hizbQuarter,
    String text,
    // bool sajda,
  }) : super(
          number: number,
          numberInSurah: numberInSurah,
          juz: juz,
          manzil: manzil,
          page: page,
          ruku: ruku,
          hizbQuarter: hizbQuarter,
          text: text,
          // sajda: sajda,
        );

  AyahModel.fromJson(Map<String, dynamic> json)
      : super(
          number: json['number'],
          numberInSurah: json['numberInSurah'],
          juz: json['juz'],
          manzil: json['manzil'],
          page: json['page'],
          ruku: json['ruku'],
          hizbQuarter: json['hizbQuarter'],
          text: json['text'],
          // sajda: json['sajda'],
        );
}
