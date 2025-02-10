import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState());

  void changeAppThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }
}
