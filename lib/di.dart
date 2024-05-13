import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'data/network/projects_network.dart';
import 'data/repository/projects_repository.dart';

final GetIt getIt = GetIt.instance;

class DependencyInjection {
  Future<void> registerSingleton() async {
    getIt.registerLazySingleton(() => Dio());
    getIt.registerLazySingleton(() => ProjectsNetwork(getIt()));
    getIt.registerLazySingleton(() => ProjectsRepository(getIt()));
  }
}
