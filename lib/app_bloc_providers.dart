import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/features/loading/cubit/loading_cubit.dart';
import 'di.dart';
import 'features/contact_me/logic/contact_info_cubit/contact_info_cubit.dart';
import 'features/projects/logic/projects_cubit/projects_cubit.dart';

class AppBlocProviders extends StatelessWidget {
  const AppBlocProviders({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoadingCubit(getIt())),
        BlocProvider(
            create: (context) => ProjectsCubit(
                  getIt(),
                  getIt(),
                )..getProjects()),
        BlocProvider(
            create: (context) => ContactInfoCubit(
                  getIt(),
                  getIt(),
                )..getContactInfo()),
      ],
      child: child,
    );
  }
}
