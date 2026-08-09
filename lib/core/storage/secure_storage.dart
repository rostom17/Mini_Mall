import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage.g.dart';

abstract class SecureStorage {
  const SecureStorage._();

  static const _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(),
    iOptions: IOSOptions(),
  );

  static FlutterSecureStorage get secureStorage => _storage;
}

@Riverpod(keepAlive: true)
FlutterSecureStorage secureStorage(Ref ref) => SecureStorage.secureStorage;
