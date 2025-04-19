import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_portfolio/common/features/loading/data/repo/loading_repo.dart';
import 'package:my_portfolio/common/network/app_network_helper.dart';
import 'package:my_portfolio/data/network/contact_info_network.dart';
import 'package:my_portfolio/data/repository/contact_info_repository.dart';
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

    getIt.registerLazySingleton(() => AppNetworkHelper(getIt<Dio>()));

    getIt.registerLazySingleton(
        () => ProjectsNetwork(getIt<AppNetworkHelper>()));
    getIt.registerLazySingleton(
        () => ProjectsRepository(getIt<ProjectsNetwork>()));

    getIt.registerLazySingleton(
        () => ContactInfoNetwork(getIt<AppNetworkHelper>()));
    getIt.registerLazySingleton(
        () => ContactInfoRepository(getIt<ContactInfoNetwork>()));
  }
}
