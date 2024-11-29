import 'package:dartz/dartz.dart';

import 'package:netflix/features/home/domain/entities/all_movies_entity.dart';

import '../../../../core/errors/exceptions.dart';

abstract class AllMovieRepo{
  Future<Either<Failure,List<AllMoviesEntity>>> fetchAllMovies();
}