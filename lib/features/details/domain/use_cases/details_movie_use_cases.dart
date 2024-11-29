import 'package:dartz/dartz.dart';
import 'package:netflix/core/errors/exceptions.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/features/details/domain/entities/details_movie_entity.dart';
import 'package:netflix/features/details/domain/repositories/details_movie_repo.dart';

class DetailsMovieUseCases {
  DetailsMovieRepo detailsMovieRepo ;

  DetailsMovieUseCases({required this.detailsMovieRepo});

  Future<Either<Failure,ShowEntity>> call(DetailsParams params)async{
    return await detailsMovieRepo.getDetailsOfMovie(params);
  }
}