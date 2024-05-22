import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common/navigation/portfolio_navigator.dart';
import 'di.dart';
import 'logic/cubit/projects_cubit.dart';
import 'presentation/landing_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();
  await DependencyInjection().registerSingleton();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectsCubit(getIt()),
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          // Use builder only if you need to use library outside ScreenUtilInit context
          builder: (_, child) {
            return MaterialApp(
              navigatorKey: PortfolioNavigator.navigatorState,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: PortfolioNavigator.onCreateRoute,
              title: 'Ziad Dev',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: const LandingPage(),
            );
          }),
    );
  }
}
