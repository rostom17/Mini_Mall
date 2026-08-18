import 'package:flutter/material.dart';

import 'colors/app_color_scheme.dart';
import 'typography/app_typography.dart';

class AppTheme {
  const AppTheme._();

  static final ThemeData light = _build(AppColorScheme.light);
  static final ThemeData dark = _build(AppColorScheme.dark);

  static ThemeData _build(ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      textTheme: AppTypography.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.surface,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.surface,
        foregroundColor: colorScheme.onSurface,
        elevation: 0,
        scrolledUnderElevation: 3,
      ),
      extensions: [],
    );
  }
}
