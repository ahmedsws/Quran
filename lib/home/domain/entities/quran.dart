import 'package:flutter/foundation.dart';

import 'surah.dart';

class Quran {
  const Quran({this.surahs = const []});
  final List<Surah> surahs;
}
