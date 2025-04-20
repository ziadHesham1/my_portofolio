import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app.dart';
import 'di.dart';
import 'features/localization/localization_cubit/localization_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await DependencyInjection().registerSingleton();
  // HydratedBloc.storage = await HydratedStorage.build(
  //   storageDirectory:
  //       HydratedStorageDirectory((await getTemporaryDirectory()).path),
  // );
  runApp(EasyLocalization(
      supportedLocales: AppLanguage.supportedLocales,
      path: 'assets/translations',
      fallbackLocale: defaultLocale,
      startLocale: defaultLocale,
      child: const MyApp()));
}
