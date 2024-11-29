import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/core/utils/services_locator.dart';
import 'package:netflix/features/details/domain/entities/details_movie_entity.dart';
import 'package:netflix/features/details/domain/use_cases/details_movie_use_cases.dart';
import 'package:url_launcher/url_launcher.dart';

part 'details_movie_state.dart';

class DetailsMovieCubit extends Cubit<DetailsMovieState> {
  DetailsMovieCubit() : super(DetailsMovieInitial());

  getDetailsResult(DetailsParams params) async {
    emit(DetailsMovieLoading());
    var response = await getIt.get<DetailsMovieUseCases>().call(params);
    response.fold((failure) => emit(DetailsMovieFailure(failure.message)),
        (result) => emit(DetailsMovieSuccessful(result)));
  }

  Future<void> launch(String url) async {
    Uri url0 =  Uri.parse(url);
    if (!await launchUrl(url0)) {
      throw Exception('Could not launch $url0');
    }
  }
}
