import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/features/home/presentation/widgets/movie_item.dart';
import 'package:netflix/features/search/presentation/manager/search_cubit.dart';
import '../widgets/custom_search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * .015,
            horizontal: MediaQuery.sizeOf(context).width * .02),
        child: Column(
          children: [
            const CustomSearchBar(),
            BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if (state is SearchSuccessful){
                  return Expanded(
                      child: ListView.builder(
                        itemCount: state.searchOfMoviesEntity.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: MediaQuery.sizeOf(context).height * .01),
                            child:  MovieItem(image: state.searchOfMoviesEntity[index].show?.image?.medium,
                            summary:state.searchOfMoviesEntity[index].show?.summary ,
                             title: state.searchOfMoviesEntity[index].show?.name,),
                          );
                        },
                      ));
                }
                else if (state is SearchFailure){
                  return Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text(state.error),),
                      ],
                    ),
                  );
                }
                else if (state is SearchLoading){
                  return const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: CircularProgressIndicator(),),
                      ],
                    ),
                  );
                }
                else {
                  return const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Text("Search"),),
                      ],
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
