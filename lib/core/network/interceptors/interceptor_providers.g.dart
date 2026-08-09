// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interceptor_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(logger)
final loggerProvider = LoggerProvider._();

final class LoggerProvider extends $FunctionalProvider<Logger, Logger, Logger>
    with $Provider<Logger> {
  LoggerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loggerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loggerHash();

  @$internal
  @override
  $ProviderElement<Logger> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Logger create(Ref ref) {
    return logger(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Logger value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Logger>(value),
    );
  }
}

String _$loggerHash() => r'dd8b2f02d0c684bfc16ec36efdab13f30d0bf8a8';

@ProviderFor(loggerInterceptor)
final loggerInterceptorProvider = LoggerInterceptorProvider._();

final class LoggerInterceptorProvider
    extends
        $FunctionalProvider<
          LoggerInterceptor,
          LoggerInterceptor,
          LoggerInterceptor
        >
    with $Provider<LoggerInterceptor> {
  LoggerInterceptorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loggerInterceptorProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loggerInterceptorHash();

  @$internal
  @override
  $ProviderElement<LoggerInterceptor> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LoggerInterceptor create(Ref ref) {
    return loggerInterceptor(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoggerInterceptor value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoggerInterceptor>(value),
    );
  }
}

String _$loggerInterceptorHash() => r'51b9bf7c0360f5ae9a3ecb21195f19f52a6b369c';

@ProviderFor(authInterceptor)
final authInterceptorProvider = AuthInterceptorProvider._();

final class AuthInterceptorProvider
    extends
        $FunctionalProvider<AuthInterceptor, AuthInterceptor, AuthInterceptor>
    with $Provider<AuthInterceptor> {
  AuthInterceptorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authInterceptorProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authInterceptorHash();

  @$internal
  @override
  $ProviderElement<AuthInterceptor> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthInterceptor create(Ref ref) {
    return authInterceptor(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthInterceptor value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthInterceptor>(value),
    );
  }
}

String _$authInterceptorHash() => r'bc18fecf3c400ccc1f769f64a5285fea9706cb1d';

@ProviderFor(errorInterceptor)
final errorInterceptorProvider = ErrorInterceptorProvider._();

final class ErrorInterceptorProvider
    extends
        $FunctionalProvider<
          ErrorInterceptor,
          ErrorInterceptor,
          ErrorInterceptor
        >
    with $Provider<ErrorInterceptor> {
  ErrorInterceptorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'errorInterceptorProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$errorInterceptorHash();

  @$internal
  @override
  $ProviderElement<ErrorInterceptor> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ErrorInterceptor create(Ref ref) {
    return errorInterceptor(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ErrorInterceptor value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ErrorInterceptor>(value),
    );
  }
}

String _$errorInterceptorHash() => r'ebc30e078c79fe4912ca2115bf32c112cdce8d2f';

@ProviderFor(retryInterceptor)
final retryInterceptorProvider = RetryInterceptorProvider._();

final class RetryInterceptorProvider
    extends
        $FunctionalProvider<
          RetryInterceptor,
          RetryInterceptor,
          RetryInterceptor
        >
    with $Provider<RetryInterceptor> {
  RetryInterceptorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'retryInterceptorProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$retryInterceptorHash();

  @$internal
  @override
  $ProviderElement<RetryInterceptor> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RetryInterceptor create(Ref ref) {
    return retryInterceptor(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RetryInterceptor value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RetryInterceptor>(value),
    );
  }
}

String _$retryInterceptorHash() => r'efb873c48f8698e0bf1eecbd1632b5a42338619d';
