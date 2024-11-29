import 'package:dartz/dartz.dart';
import 'package:netflix/core/errors/exceptions.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/features/search/data/models/search_of_movies_models.dart';

abstract class RemoteSearch {
  Future<Either<Failure,List<SearchOfMoviesModel>>> getResultOfSearch(SearchParams params);
}