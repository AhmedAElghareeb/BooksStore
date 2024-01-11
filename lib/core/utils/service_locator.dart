import 'package:books_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_helper.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerSingleton<ApiHelper>(
    ApiHelper(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiHelper>(),
    ),
  );
}
