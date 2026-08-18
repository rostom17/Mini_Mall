import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mini_mall/core/theme/theme_mode_notifier/theme_mode_notifier.dart';

import '/core/theme/app_theme.dart';
import '/app/router/app_router.dart';

class MiniMall extends ConsumerWidget {
  const MiniMall({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ref.watch(themeModeProvider),
      routerConfig: ref.watch(routerProvider),
    );
  }
}
