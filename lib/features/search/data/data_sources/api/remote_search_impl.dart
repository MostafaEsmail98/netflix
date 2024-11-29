import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:netflix/core/database/api/api_consumer.dart';
import 'package:netflix/core/database/api/endpoints.dart';
import 'package:netflix/core/errors/exceptions.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/features/search/data/data_sources/api/remote_search.dart';
import 'package:netflix/features/search/data/models/search_of_movies_models.dart';

class RemoteSearchImpl extends RemoteSearch {
  ApiConsumer api;

  RemoteSearchImpl({required this.api});

  @override
  Future<Either<Failure, List<SearchOfMoviesModel>>> getResultOfSearch(
      SearchParams params) async {
    try {
      var response = await api.get(Endpoints.searchMovies+params.search);
      List<SearchOfMoviesModel> movies = (response as List<dynamic>)
          .map((item) => SearchOfMoviesModel.fromJson(item))
          .toList();
      return Right(movies);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromServer(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
