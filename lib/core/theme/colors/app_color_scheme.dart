import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppColorScheme {
  const AppColorScheme._();

  static ColorScheme get light => ColorScheme.fromSeed(
    seedColor: AppColors.seed,
    brightness: Brightness.light,
  );

  static ColorScheme get dark => ColorScheme.fromSeed(
    seedColor: AppColors.seed,
    brightness: Brightness.dark,
  );
}
