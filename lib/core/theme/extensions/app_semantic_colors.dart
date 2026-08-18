import 'package:flutter/material.dart';

import '/core/theme/colors/app_colors.dart';

@immutable
class AppSemanticColors extends ThemeExtension<AppSemanticColors> {
  final Color success;
  final Color warning;
  final Color info;

  const AppSemanticColors({
    required this.success,
    required this.warning,
    required this.info,
  });

  @override
  AppSemanticColors copyWith({Color? success, Color? warning, Color? info}) {
    return AppSemanticColors(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
    );
  }

  @override
  AppSemanticColors lerp(ThemeExtension<AppSemanticColors>? other, double t) {
    if (other is! AppSemanticColors) return this;
    return AppSemanticColors(
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(success, other.success, t)!,
      info: Color.lerp(success, other.success, t)!,
    );
  }

  factory AppSemanticColors.of(ColorScheme colorScheme) {
    final isDark = colorScheme.brightness == Brightness.dark;

    return AppSemanticColors(
      success: isDark ? AppColors.successDark : AppColors.successLight,
      warning: isDark ? AppColors.warningDark : AppColors.warningLight,
      info: colorScheme.primary,
    );
  }
}
