import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/core/storage/shared_preferences_provider.dart';
import '/core/constants/storage_keys.dart';

part 'theme_repository.g.dart';

@Riverpod(keepAlive: true)
ThemeRepository themeRespository(Ref ref) =>
    SharedPrefThemeRepository(ref.watch(sharedPreferencesProvider));

abstract interface class ThemeRepository {
  ThemeMode getThemeMode();
  Future<void> saveThemeMode(ThemeMode mode);
}

class SharedPrefThemeRepository implements ThemeRepository {
  final SharedPreferences _sharedPreferences;
  const SharedPrefThemeRepository(this._sharedPreferences);

  @override
  ThemeMode getThemeMode() {
    final raw = _sharedPreferences.getString(StorageKeys.themeModeKey);
    return ThemeMode.values.firstWhere(
      (mode) => mode.name == raw,
      orElse: () => ThemeMode.system,
    );
  }

  @override
  Future<void> saveThemeMode(ThemeMode mode) async =>
      _sharedPreferences.setString(StorageKeys.themeModeKey, mode.name);
}
