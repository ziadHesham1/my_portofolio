import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationState.init());

  void onLocalizationUpdated(Locale locale, void Function() onSuccess) {
    emit(state.updateLocale(locale));
    onSuccess();
  }
}
