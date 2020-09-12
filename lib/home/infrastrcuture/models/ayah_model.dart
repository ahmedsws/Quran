import 'package:quran/home/domain/entities/ayah.dart';

class AyahModel extends Ayah {
  const AyahModel(
      {this.number,
      this.numberInSurah,
      this.juz,
      this.manzil,
      this.page,
      this.ruku,
      this.hizbQuarter,
      this.text,
      this.sajda});
  final int number, numberInSurah, juz, manzil, page, ruku, hizbQuarter;
  final String text;
  final bool sajda;
}
