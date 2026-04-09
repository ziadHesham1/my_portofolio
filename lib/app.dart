import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:ziad_dev/features/localization/localization_cubit/localization_cubit.dart';

import 'app_bloc_providers.dart';
import 'common/navigation/app_navigator.dart';
import 'common/style/portfolio_colors.dart';
import 'features/landing_page/landing_page.dart';

class MyApp extends StatelessWidget {
  final AppNavigator appNavigator;
  const MyApp({super.key, required this.appNavigator});
  @override
  Widget build(BuildContext context) {
    return AppBlocProviders(
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          // Use builder only if you need to use library outside ScreenUtilInit context
          builder: (_, child) {
            return MaterialApp(
              key: ValueKey(context.locale),
              navigatorKey: AppNavigator.navigatorState,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: appNavigator.generateRoute,
              locale: context.locale,
              supportedLocales: AppLanguage.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              title: 'Ziad.dev',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
                useMaterial3: true,
              ),
              home: const LandingPage(),
              builder: FlutterSmartDialog.init(),
            );
          }),
    );
  }
}
