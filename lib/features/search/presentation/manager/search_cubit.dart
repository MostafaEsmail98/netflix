import 'package:bloc/bloc.dart';
import 'package:netflix/features/search/domain/entities/search_of_movies_entity.dart';


part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  getSearchResult(){

  }
}
