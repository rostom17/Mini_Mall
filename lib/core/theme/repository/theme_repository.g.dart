// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(themeRespository)
final themeRespositoryProvider = ThemeRespositoryProvider._();

final class ThemeRespositoryProvider
    extends
        $FunctionalProvider<ThemeRepository, ThemeRepository, ThemeRepository>
    with $Provider<ThemeRepository> {
  ThemeRespositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeRespositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeRespositoryHash();

  @$internal
  @override
  $ProviderElement<ThemeRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ThemeRepository create(Ref ref) {
    return themeRespository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeRepository>(value),
    );
  }
}

String _$themeRespositoryHash() => r'1340aa65675cc03a847c26aeec6adf3b2c637c86';
