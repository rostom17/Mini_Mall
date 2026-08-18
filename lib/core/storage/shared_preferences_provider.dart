import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// `SharedPreferences.getInstance()` is async,
/// but the notifier's build() must be synchronous to avoid a loading flicker on app start.
/// The standard Riverpod pattern is to resolve SharedPreferences once in main()
/// and inject it as an already-resolved override,
/// so every provider that depends on it can read it synchronously.

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) {
  throw UnimplementedError('Overridden in main function before runApp');
});
