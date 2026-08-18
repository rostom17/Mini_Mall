import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/core/theme/repository/theme_repository.dart';

final themeModeProvider = NotifierProvider<ThemeModeNotifier, ThemeMode>(
  ThemeModeNotifier.new,
);

class ThemeModeNotifier extends Notifier<ThemeMode> {
  @override
  ThemeMode build() => ref.watch(themeRespositoryProvider).getThemeMode();

  Future<void> setThemeMode(ThemeMode mode) async {
    state = mode;
    await ref.read(themeRespositoryProvider).saveThemeMode(mode);
  }

  Future<void> toggleThemeMode() async {
    final platformIsDark =
        WidgetsBinding.instance.platformDispatcher.platformBrightness ==
        Brightness.dark;
    final effectiveIsDark = state == ThemeMode.system
        ? platformIsDark
        : state == ThemeMode.dark;

    await setThemeMode(effectiveIsDark ? ThemeMode.light : ThemeMode.dark);
  }
}
