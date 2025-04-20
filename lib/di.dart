import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ziad_dev/common/features/loading/data/repo/loading_repo.dart';
import 'package:ziad_dev/common/network/app_network_helper.dart';
import 'package:ziad_dev/features/contact_me/data/network/contact_info_network.dart';
import 'package:ziad_dev/features/contact_me/data/repository/contact_info_repository.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'features/projects/data/network/projects_network.dart';
import 'features/projects/data/repo/projects_repository.dart';

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
