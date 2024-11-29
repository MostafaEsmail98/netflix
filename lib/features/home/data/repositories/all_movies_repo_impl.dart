import 'package:dartz/dartz.dart';
import 'package:netflix/core/errors/exceptions.dart';
import 'package:netflix/features/home/data/data_sources/api/remote_all_movie.dart';
import 'package:netflix/features/home/domain/entities/all_movies_entity.dart';
import 'package:netflix/features/home/domain/repositories/all_movie_repo.dart';

class AllMoviesRepoImpl extends AllMovieRepo {
  RemoteAllMovie remoteAllMovie ;

  AllMoviesRepoImpl({required this.remoteAllMovie});

  @override
  Future<Either<Failure, List<AllMoviesEntity>>> fetchAllMovies() async{
  return await remoteAllMovie.fetchAllMovie() ;
  }

}