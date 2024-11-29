import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/features/details/domain/entities/details_movie_entity.dart';

part 'details_movie_state.dart';

class DetailsMovieCubit extends Cubit<DetailsMovieState> {
  DetailsMovieCubit() : super(DetailsMovieInitial());
}
