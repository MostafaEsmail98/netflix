import 'package:dartz/dartz.dart';
import 'package:netflix/core/errors/exceptions.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/features/details/data/data_sources/api/remote_details_movie.dart';
import 'package:netflix/features/details/domain/entities/details_movie_entity.dart';
import 'package:netflix/features/details/domain/repositories/details_movie_repo.dart';

class DetailsMovieRepoImpl extends DetailsMovieRepo{
  RemoteDetailsMovie remoteDetailsMovie ;

  DetailsMovieRepoImpl({required this.remoteDetailsMovie});

  @override
  Future<Either<Failure, ShowEntity>> getDetailsOfMovie(DetailsParams params) async{
   return await remoteDetailsMovie.getDetailsMovie(params);
  }
}