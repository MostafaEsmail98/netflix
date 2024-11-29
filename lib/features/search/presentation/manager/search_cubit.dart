import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/core/utils/services_locator.dart';
import 'package:netflix/features/search/domain/entities/search_of_movies_entity.dart';
import 'package:netflix/features/search/domain/use_cases/search_use_cases.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  TextEditingController typeSearch = TextEditingController();

  getSearchResult() async {
    emit(SearchLoading());
    var response = await getIt
        .get<SearchUseCases>()
        .call(SearchParams(search: typeSearch.text));

    response.fold((failure) => emit(SearchFailure(failure.message)),
        (result) => emit(SearchSuccessful(result)));
  }
}
