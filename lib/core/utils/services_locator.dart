import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../database/api/dio_consumer.dart';
//get_it: ^8.0.2
final getIt = GetIt.instance;

void setup(){
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<DioConsumer>(DioConsumer(dio:getIt.get<Dio>()));





}