part of 'details_movie_cubit.dart';

class DetailsMovieState {}

final class DetailsMovieInitial extends DetailsMovieState {}
final class DetailsMovieLoading extends DetailsMovieState {}
final class DetailsMovieSuccessful extends DetailsMovieState {
  ShowEntity showEntity ;

  DetailsMovieSuccessful(this.showEntity);
}
final class DetailsMovieFailure extends DetailsMovieState {
  String error ;

  DetailsMovieFailure(this.error);
}
