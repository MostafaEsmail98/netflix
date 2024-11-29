import 'package:netflix/features/home/domain/entities/all_movies_entity.dart';

class AllMoviesState {}

final class AllMoviesInitial extends AllMoviesState {}
final class AllMoviesLoading extends AllMoviesState {}
final class AllMoviesSuccessful extends AllMoviesState {
  AllMoviesEntity allMoviesEntity;

  AllMoviesSuccessful(this.allMoviesEntity);
}
final class AllMoviesFailure extends AllMoviesState {
  String error;

  AllMoviesFailure(this.error);
}
