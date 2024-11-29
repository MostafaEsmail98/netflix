import 'package:dartz/dartz.dart';
import 'package:netflix/core/errors/exceptions.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/features/details/data/models/details_movie_model.dart';

abstract class RemoteDetailsMovie {
  Future<Either<Failure,DetailsMovieModel>> getDetailsMovie(DetailsParams params);
}