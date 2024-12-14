import 'dart:async';

import '../enum/loading_status.dart';

class LoadingRepository {
  final _controller = StreamController<LoadingStatus>.broadcast();

  void _updateStatus(LoadingStatus status) {
    print('loading_repo > _updateStatus > status: $status');
    _controller.sink.add(status);
  }

  Stream<LoadingStatus> get loadingStatusStream => _controller.stream;

  void loadingStarted() {
    _updateStatus(LoadingStatus.loading);
  }

  Future<void> loadingFinished() async {
    _updateStatus(LoadingStatus.finished);
  }

  void dispose() {
    _controller.close();
  }
}
