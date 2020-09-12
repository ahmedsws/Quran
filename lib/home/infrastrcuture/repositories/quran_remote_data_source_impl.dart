import 'dart:convert';

import 'package:quran/home/infrastrcuture/data_sources/quran_remote_data_source.dart';
import 'package:quran/home/infrastrcuture/models/quran_model.dart';
import 'package:http/http.dart' as http;

class QuranRemoteDataSourceImpl implements QuranRemoteDataSource {
  @override
  Future<QuranModel> getQuran() async {
    final url = 'http://api.alquran.cloud/v1/quran/en.asad';

    final response = await http.get(url);
    final data = jsonDecode(response.body);

    return QuranModel.fromJson(data);
  }
}
