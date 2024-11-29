import 'package:dartz/dartz.dart';
import 'package:netflix/core/errors/failure.dart';
import 'package:netflix/features/home/domain/entities/all_movies_entity.dart';

abstract class AllMovieRepo{
  Future<Either<Failure,AllMoviesEntity>> fetchAllMovies();
}