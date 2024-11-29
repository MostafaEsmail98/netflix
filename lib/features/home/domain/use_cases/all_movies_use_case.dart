import 'package:dartz/dartz.dart';
import 'package:netflix/core/errors/exceptions.dart';
import 'package:netflix/features/home/domain/entities/all_movies_entity.dart';
import 'package:netflix/features/home/domain/repositories/all_movie_repo.dart';

class AllMoviesUseCase {
  AllMovieRepo allMovieRepo ;

  AllMoviesUseCase({required this.allMovieRepo});

  Future<Either<Failure,List<AllMoviesEntity>>>call()async{
    return await allMovieRepo.fetchAllMovies();
  }
}