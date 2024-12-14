// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_requirements_screen_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addRequirementsScreenControllerHash() =>
    r'9678af45c513e97f44d666fdb808ed781b7369e1';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AddRequirementsScreenController
    extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final int vehicleId;

  FutureOr<void> build(
    int vehicleId,
  );
}

/// See also [AddRequirementsScreenController].
@ProviderFor(AddRequirementsScreenController)
const addRequirementsScreenControllerProvider =
    AddRequirementsScreenControllerFamily();

/// See also [AddRequirementsScreenController].
class AddRequirementsScreenControllerFamily extends Family<AsyncValue<void>> {
  /// See also [AddRequirementsScreenController].
  const AddRequirementsScreenControllerFamily();

  /// See also [AddRequirementsScreenController].
  AddRequirementsScreenControllerProvider call(
    int vehicleId,
  ) {
    return AddRequirementsScreenControllerProvider(
      vehicleId,
    );
  }

  @override
  AddRequirementsScreenControllerProvider getProviderOverride(
    covariant AddRequirementsScreenControllerProvider provider,
  ) {
    return call(
      provider.vehicleId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addRequirementsScreenControllerProvider';
}

/// See also [AddRequirementsScreenController].
class AddRequirementsScreenControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        AddRequirementsScreenController, void> {
  /// See also [AddRequirementsScreenController].
  AddRequirementsScreenControllerProvider(
    int vehicleId,
  ) : this._internal(
          () => AddRequirementsScreenController()..vehicleId = vehicleId,
          from: addRequirementsScreenControllerProvider,
          name: r'addRequirementsScreenControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addRequirementsScreenControllerHash,
          dependencies: AddRequirementsScreenControllerFamily._dependencies,
          allTransitiveDependencies:
              AddRequirementsScreenControllerFamily._allTransitiveDependencies,
          vehicleId: vehicleId,
        );

  AddRequirementsScreenControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.vehicleId,
  }) : super.internal();

  final int vehicleId;

  @override
  FutureOr<void> runNotifierBuild(
    covariant AddRequirementsScreenController notifier,
  ) {
    return notifier.build(
      vehicleId,
    );
  }

  @override
  Override overrideWith(AddRequirementsScreenController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AddRequirementsScreenControllerProvider._internal(
        () => create()..vehicleId = vehicleId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        vehicleId: vehicleId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AddRequirementsScreenController, void>
      createElement() {
    return _AddRequirementsScreenControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddRequirementsScreenControllerProvider &&
        other.vehicleId == vehicleId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, vehicleId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddRequirementsScreenControllerRef
    on AutoDisposeAsyncNotifierProviderRef<void> {
  /// The parameter `vehicleId` of this provider.
  int get vehicleId;
}

class _AddRequirementsScreenControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        AddRequirementsScreenController,
        void> with AddRequirementsScreenControllerRef {
  _AddRequirementsScreenControllerProviderElement(super.provider);

  @override
  int get vehicleId =>
      (origin as AddRequirementsScreenControllerProvider).vehicleId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
