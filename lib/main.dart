import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:mini_mall/core/storage/shared_preferences_provider.dart';
import 'package:mini_mall/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      retry: null,
      overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
      child: MiniMall(),
    ),
  );
}
