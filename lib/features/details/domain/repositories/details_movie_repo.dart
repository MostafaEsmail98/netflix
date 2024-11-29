import 'package:dartz/dartz.dart';
import 'package:netflix/core/errors/exceptions.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/features/details/domain/entities/details_movie_entity.dart';

abstract class DetailsMovieRepo {
  Future<Either<Failure,ShowEntity>> getDetailsOfMovie(DetailsParams params);
}