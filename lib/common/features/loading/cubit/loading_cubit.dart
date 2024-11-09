// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_portfolio/common/features/loading/data/enum/loading_status.dart';
import 'package:my_portfolio/common/features/loading/data/repo/loading_repo.dart';

part 'loading_state.dart';

class LoadingCubit extends Cubit<LoadingState> {
  LoadingRepository loadingRepository;
  LoadingCubit(
    this.loadingRepository,
  ) : super(LoadingState.finished()) {
    // testLoading();
    loadingRepository.loadingStatusStream.listen((status) {
      print('loading_cubit > status: $status');
      // loadingStatus(status);
    });
  }
  testLoading() async {
    await Future.delayed(const Duration(seconds: 3));
    loadingFinished();
  }

  loadingStatus(LoadingStatus status) {
    emit(state.updateStatus(status));
  }

  void loadingStarted() => emit(LoadingState.loading());

  void loadingFinished() => emit(LoadingState.finished());
}
