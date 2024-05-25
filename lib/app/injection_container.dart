import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:netflix_copy/app/services/api_keys.dart';
import 'package:netflix_copy/features/home/cubit/home_cubit.dart';
import 'package:netflix_copy/features/home/data/data_source/movies_remote_data_source.dart';
import 'package:netflix_copy/features/home/data/repository/movies_repository.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  // Bloc (cubit)
  getIt.registerFactory(() => HomeCubit(getIt()));

  // Repository
  getIt.registerFactory(() => MoviesRepository(remoteDataSource: getIt()));

  // DataSource
  getIt.registerFactory(() => MoviesRemoteRetrofitDataSource(getIt<Dio>()));

  // Dio
  getIt.registerSingleton<Dio>(Dio()..options.baseUrl = ApiConfig.baseUrl);
}
