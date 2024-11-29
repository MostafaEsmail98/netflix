import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:netflix/core/database/api/api_consumer.dart';
import 'package:netflix/core/database/api/endpoints.dart';
import 'package:netflix/features/home/data/data_sources/api/remote_all_movie.dart';
import 'package:netflix/features/home/data/models/all_movies_model.dart';
import '../../../../../core/errors/exceptions.dart';

class RemoteAllMovieImpl extends RemoteAllMovie{
  ApiConsumer api ;

  RemoteAllMovieImpl({required this.api});

  @override
  Future<Either<Failure, AllMoviesModel>> fetchAllMovie() async{
   try {
     var response = await api.get(Endpoints.allMovies) ;
     return Right(AllMoviesModel.fromJson(response));
   }  catch (e) {
     if (e is DioException){
       return Left(ServerFailure.fromServer(e));
     }else {
       return Left(ServerFailure(e.toString()));
     }
   }
  }
}