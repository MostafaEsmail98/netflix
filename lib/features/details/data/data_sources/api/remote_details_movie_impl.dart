import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:netflix/core/database/api/api_consumer.dart';
import 'package:netflix/core/database/api/endpoints.dart';
import 'package:netflix/core/errors/exceptions.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/features/details/data/data_sources/api/remote_details_movie.dart';
import 'package:netflix/features/details/data/models/details_movie_model.dart';

class RemoteDetailsMovieImpl extends RemoteDetailsMovie {
  ApiConsumer api;

  RemoteDetailsMovieImpl({required this.api});

  @override
  Future<Either<Failure, DetailsMovieModel>> getDetailsMovie(
      DetailsParams params) async {
    try {
      var response =
          await api.get(Endpoints.detailsMovies + params.id.toString());
      return Right(DetailsMovieModel.fromJson(response));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromServer(e));
      } else {
        return Left(ServerFailure(e.toString()));
      }
    }
  }
}
