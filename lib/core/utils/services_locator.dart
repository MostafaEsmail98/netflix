import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:netflix/features/details/data/data_sources/api/remote_details_movie_impl.dart';
import 'package:netflix/features/details/domain/use_cases/details_movie_use_cases.dart';
import 'package:netflix/features/home/data/data_sources/api/remote_all_movie_impl.dart';
import 'package:netflix/features/home/data/repositories/all_movies_repo_impl.dart';
import 'package:netflix/features/home/domain/use_cases/all_movies_use_case.dart';
import 'package:netflix/features/search/data/repositories/search_repo_impl.dart';
import '../../features/details/data/repositories/details_movie_repo_impl.dart';
import '../../features/search/data/data_sources/api/remote_search_impl.dart';
import '../../features/search/domain/use_cases/search_use_cases.dart';
import '../database/api/dio_consumer.dart';

//get_it: ^8.0.2
final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<DioConsumer>(DioConsumer(dio: getIt.get<Dio>()));

  getIt.registerSingleton<RemoteAllMovieImpl>(RemoteAllMovieImpl(api: getIt.get<DioConsumer>()));
  getIt.registerSingleton<AllMoviesRepoImpl>(AllMoviesRepoImpl(remoteAllMovie: getIt.get<RemoteAllMovieImpl>()));
  getIt.registerSingleton<AllMoviesUseCase>(AllMoviesUseCase(allMovieRepo: getIt.get<AllMoviesRepoImpl>()));

  getIt.registerSingleton<RemoteSearchImpl>(RemoteSearchImpl(api: getIt.get<DioConsumer>()));
  getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl(remoteSearch: getIt.get<RemoteSearchImpl>()));
  getIt.registerSingleton<SearchUseCases>(SearchUseCases(searchRepo: getIt.get<SearchRepoImpl>()));

  getIt.registerSingleton<RemoteDetailsMovieImpl>(RemoteDetailsMovieImpl(api: getIt.get<DioConsumer>()));
  getIt.registerSingleton<DetailsMovieRepoImpl>(DetailsMovieRepoImpl(remoteDetailsMovie: getIt.get<RemoteDetailsMovieImpl>()));
  getIt.registerSingleton<DetailsMovieUseCases>(DetailsMovieUseCases(detailsMovieRepo: getIt.get<DetailsMovieRepoImpl>()));
}
