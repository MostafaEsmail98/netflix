import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:netflix/features/home/data/data_sources/api/remote_all_movie_impl.dart';
import 'package:netflix/features/home/data/repositories/all_movies_repo_impl.dart';
import 'package:netflix/features/home/domain/use_cases/all_movies_use_case.dart';

import '../database/api/dio_consumer.dart';

//get_it: ^8.0.2
final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<DioConsumer>(DioConsumer(dio: getIt.get<Dio>()));

  getIt.registerSingleton<RemoteAllMovieImpl>(RemoteAllMovieImpl(api: getIt.get<DioConsumer>()));
  getIt.registerSingleton<AllMoviesRepoImpl>(AllMoviesRepoImpl(remoteAllMovie: getIt.get<RemoteAllMovieImpl>()));
  getIt.registerSingleton<AllMoviesUseCase>(AllMoviesUseCase(allMovieRepo: getIt.get<AllMoviesRepoImpl>()));
}
