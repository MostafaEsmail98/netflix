part of 'search_cubit.dart';

class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccessful extends SearchState {
  List<SearchOfMoviesEntity> searchOfMoviesEntity;

  SearchSuccessful(this.searchOfMoviesEntity);
}

final class SearchFailure extends SearchState {
  String error;

  SearchFailure(this.error);
}
