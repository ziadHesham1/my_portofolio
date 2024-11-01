import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/loading/cubit/loading_cubit.dart';
import '../features/loading/data/enum/loading_status.dart';

class PortfolioLoadingWidget extends StatelessWidget {
  final Widget child;
  final Widget? loadingChild;
  const PortfolioLoadingWidget({
    super.key,
    required this.child,
    this.loadingChild,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingCubit, LoadingState>(
      builder: (context, state) {
        print('portfolio_loading_widget > ${state.status}');
        if (loadingChild != null && state.status == LoadingStatus.loading) {
          return loadingChild!;
        }
        return child;
      },
    );
  }
}
