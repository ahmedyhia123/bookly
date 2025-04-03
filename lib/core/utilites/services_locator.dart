import 'package:bookly/core/utilites/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo_implemention.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplemention>(
    HomeRepoImplemention(getIt<ApiService>()),
  );
}
