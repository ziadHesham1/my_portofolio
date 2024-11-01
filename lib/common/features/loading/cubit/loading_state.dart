part of 'loading_cubit.dart';

class LoadingState extends Equatable {
  final LoadingStatus status;
  const LoadingState(this.status);

  factory LoadingState.loading() => const LoadingState(LoadingStatus.loading);
  factory LoadingState.finished() => const LoadingState(LoadingStatus.finished);
  updateStatus(LoadingStatus newStatus) {
    return copyWith(status: newStatus);
  }

  LoadingState copyWith({LoadingStatus? status}) {
    return LoadingState(status ?? this.status);
  }

  @override
  List<Object> get props => [];
}
