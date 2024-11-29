import 'package:dartz/dartz.dart';
import 'package:netflix/core/errors/exceptions.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/features/search/data/data_sources/api/remote_search.dart';
import 'package:netflix/features/search/domain/entities/search_of_movies_entity.dart';
import 'package:netflix/features/search/domain/repositories/search_repo.dart';

class SearchRepoImpl extends SearchRepo {
  RemoteSearch remoteSearch ;

  SearchRepoImpl({required this.remoteSearch});

  @override
  Future<Either<Failure, List<SearchOfMoviesEntity>>> getResultOfSearch(SearchParams params)async {
  return await remoteSearch.getResultOfSearch(params);
  }

}