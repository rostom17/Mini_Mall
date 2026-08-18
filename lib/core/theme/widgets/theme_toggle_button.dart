import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mall/core/theme/theme_mode_notifier/theme_mode_notifier.dart';
import 'package:mini_mall/core/utils/theme_context.dart';

class ThemeToggleButton extends ConsumerWidget {
  const ThemeToggleButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDark = context.isDarkMode;
    return IconButton(
      onPressed: () => ref.read(themeModeProvider.notifier).toggleThemeMode(),
      tooltip: isDark ? 'Switch to light mode' : 'Switch to dark mode',
      icon: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
    );
  }
}
