import 'package:bloc/bloc.dart';
import 'package:counter_remastered/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(themeMode: ThemeMode.light)) {
    updateAppTheme();
  }

  void updateAppTheme() {
    final Brightness currentBrightness = AppTheme.currentSystemBrightness;
    currentBrightness == Brightness.dark ? _setTheme(ThemeMode.dark) : _setTheme(ThemeMode.light);
  }

  void _setTheme(ThemeMode themeMode) {
    AppTheme.setStatusAndNavigationBarColor(themeMode);
    emit(ThemeState(themeMode: themeMode));
  }
}
