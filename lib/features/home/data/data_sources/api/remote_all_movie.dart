import 'package:dartz/dartz.dart';
import 'package:netflix/features/home/data/models/all_movies_model.dart';

import '../../../../../core/errors/exceptions.dart';

abstract class RemoteAllMovie {
  Future<Either<Failure,AllMoviesModel>> fetchAllMovie();
}