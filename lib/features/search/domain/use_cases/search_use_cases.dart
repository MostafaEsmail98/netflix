import 'package:dartz/dartz.dart';
import 'package:netflix/core/errors/exceptions.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/features/search/domain/entities/search_of_movies_entity.dart';
import 'package:netflix/features/search/domain/repositories/search_repo.dart';

class SearchUseCases {
  SearchRepo searchRepo ;

  SearchUseCases({required this.searchRepo});

  Future<Either<Failure,List<SearchOfMoviesEntity>>> call (SearchParams params) async{
    return await searchRepo.getResultOfSearch(params);
  }
}