import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_portfolio/common/features/loading/data/repo/loading_repo.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'data/network/projects_network.dart';
import 'data/repository/projects_repository.dart';

final GetIt getIt = GetIt.instance;

class DependencyInjection {
  Future<void> registerSingleton() async {
    // prettydio
    getIt.registerLazySingleton(
        () => Dio()..interceptors.add(PrettyDioLogger()));

    getIt.registerLazySingleton(() => LoadingRepository());

    getIt.registerLazySingleton(() => ProjectsNetwork(getIt()));
    getIt.registerLazySingleton(() => ProjectsRepository(getIt()));
  }
}
