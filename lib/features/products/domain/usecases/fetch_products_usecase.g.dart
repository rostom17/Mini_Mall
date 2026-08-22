// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_products_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchProductsUsecase)
final fetchProductsUsecaseProvider = FetchProductsUsecaseProvider._();

final class FetchProductsUsecaseProvider
    extends
        $FunctionalProvider<
          FetchProductsUsecase,
          FetchProductsUsecase,
          FetchProductsUsecase
        >
    with $Provider<FetchProductsUsecase> {
  FetchProductsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchProductsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchProductsUsecaseHash();

  @$internal
  @override
  $ProviderElement<FetchProductsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FetchProductsUsecase create(Ref ref) {
    return fetchProductsUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchProductsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchProductsUsecase>(value),
    );
  }
}

String _$fetchProductsUsecaseHash() =>
    r'f9fbda407425decfcbc4fa82c7e8d26adb543cca';
