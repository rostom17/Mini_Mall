// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductDetailsController)
final productDetailsControllerProvider = ProductDetailsControllerFamily._();

final class ProductDetailsControllerProvider
    extends $AsyncNotifierProvider<ProductDetailsController, Product> {
  ProductDetailsControllerProvider._({
    required ProductDetailsControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'productDetailsControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productDetailsControllerHash();

  @override
  String toString() {
    return r'productDetailsControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ProductDetailsController create() => ProductDetailsController();

  @override
  bool operator ==(Object other) {
    return other is ProductDetailsControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productDetailsControllerHash() =>
    r'142f78774ad3f4b856ef66ad79a7f1c0094f1027';

final class ProductDetailsControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ProductDetailsController,
          AsyncValue<Product>,
          Product,
          FutureOr<Product>,
          String
        > {
  ProductDetailsControllerFamily._()
    : super(
        retry: null,
        name: r'productDetailsControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductDetailsControllerProvider call(String id) =>
      ProductDetailsControllerProvider._(argument: id, from: this);

  @override
  String toString() => r'productDetailsControllerProvider';
}

abstract class _$ProductDetailsController extends $AsyncNotifier<Product> {
  late final _$args = ref.$arg as String;
  String get id => _$args;

  FutureOr<Product> build(String id);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Product>, Product>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Product>, Product>,
              AsyncValue<Product>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
