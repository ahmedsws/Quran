import 'package:quran/home/domain/repositories/quran_repository.dart';
import 'package:quran/home/infrastrcuture/data_sources/quran_remote_data_source.dart';
import 'package:quran/home/infrastrcuture/models/quran_model.dart';
import 'package:quran/home/infrastrcuture/data_sources/quran_remote_data_source_impl.dart';

class QuranRepositoryImpl implements QuranRepository {
  QuranRepositoryImpl({QuranRemoteDataSource? remoteDataSource})
      : remoteDataSource = remoteDataSource ?? QuranRemoteDataSourceImpl();

  final QuranRemoteDataSource remoteDataSource;

  @override
  Future<QuranModel> getQuran() async => await remoteDataSource.getQuran();
}
