import 'package:dartz/dartz.dart';
import 'package:netflix/core/errors/exceptions.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/features/search/domain/entities/search_of_movies_entity.dart';

abstract class SearchRepo {
  Future<Either<Failure,SearchOfMoviesEntity>> getResultOfSearch(SearchParams param);
}