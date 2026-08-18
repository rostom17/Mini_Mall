import 'package:flutter/material.dart';

import '/core/theme/extensions/app_semantic_colors.dart';

extension ThemeContext on BuildContext {
  bool get isDarkMode => appTheme.brightness == Brightness.dark;

  ThemeData get appTheme => Theme.of(this);
  ColorScheme get colorScheme => appTheme.colorScheme;
  TextTheme get textTheme => appTheme.textTheme;

  AppSemanticColors get appSemanticColors =>
      appTheme.extension<AppSemanticColors>() ??
      AppSemanticColors.of(colorScheme);
}
