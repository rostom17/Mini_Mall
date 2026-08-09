import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/core/storage/secure_storage.dart';
import '/core/constants/storage_keys.dart';
import '/core/errors/exception.dart';

part 'token_storage.g.dart';

@Riverpod(keepAlive: true)
TokenStorage tokenStorage(Ref ref) =>
    TokenStorageImpl(ref.watch(secureStorageProvider));

abstract interface class TokenStorage {
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> saveAccessToken(String accessToken);
  Future<void> saveRefreshToken(String refreshToken);
  Future<void> deleteAllTokens();
}

class TokenStorageImpl implements TokenStorage {
  final FlutterSecureStorage _storage;

  const TokenStorageImpl(this._storage);

  @override
  Future<String?> getAccessToken() async =>
      await _read(StorageKeys.accessTokenKey);

  @override
  Future<String?> getRefreshToken() async =>
      await _read(StorageKeys.refreshTokenKey);

  @override
  Future<void> saveAccessToken(String accessToken) async {
    await _write(StorageKeys.accessTokenKey, accessToken);
  }

  @override
  Future<void> saveRefreshToken(String refreshToken) async {
    await _write(StorageKeys.refreshTokenKey, refreshToken);
  }

  @override
  Future<void> deleteAllTokens() async {
    try {
      await Future.wait([
        _storage.delete(key: StorageKeys.accessTokenKey),
        _storage.delete(key: StorageKeys.refreshTokenKey),
      ]);
    } catch (e) {
      throw StorageException();
    }
  }

  Future<String?> _read(String key) async {
    try {
      return await _storage.read(key: key);
    } catch (e) {
      throw StorageException();
    }
  }

  Future<void> _write(String key, String value) async {
    try {
      await _storage.write(key: key, value: value);
    } catch (e) {
      throw StorageException();
    }
  }
}
