// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_product_by_id_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchProductByIdUsecase)
final fetchProductByIdUsecaseProvider = FetchProductByIdUsecaseProvider._();

final class FetchProductByIdUsecaseProvider
    extends
        $FunctionalProvider<
          FetchProductByIdUsecase,
          FetchProductByIdUsecase,
          FetchProductByIdUsecase
        >
    with $Provider<FetchProductByIdUsecase> {
  FetchProductByIdUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchProductByIdUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchProductByIdUsecaseHash();

  @$internal
  @override
  $ProviderElement<FetchProductByIdUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FetchProductByIdUsecase create(Ref ref) {
    return fetchProductByIdUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchProductByIdUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchProductByIdUsecase>(value),
    );
  }
}

String _$fetchProductByIdUsecaseHash() =>
    r'4634b6e2a69d5e7f0f95e6e153000e26d37a60dc';
