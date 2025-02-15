import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/core/utils/services_locator.dart';
import 'package:netflix/features/home/domain/use_cases/all_movies_use_case.dart';
import 'package:url_launcher/url_launcher.dart';

import 'all_movies_state.dart';

class AllMoviesCubit extends Cubit<AllMoviesState> {
  AllMoviesCubit() : super(AllMoviesInitial());

  getAllMovies() async {
    emit(AllMoviesLoading());
    var response = await getIt.get<AllMoviesUseCase>().call();
    response.fold(
      (failure) => emit(AllMoviesFailure(failure.message)),
      (result) => emit(AllMoviesSuccessful(result)),
    );
  }

  Future<void> launch(String url) async {
  Uri url0 =  Uri.parse(url);
    if (!await launchUrl(url0)) {
      throw Exception('Could not launch $url0');
    }
  }
}
