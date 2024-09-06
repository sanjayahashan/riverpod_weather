// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$asyncWeatherHash() => r'2925296bd8c4ea713ebfe54d645bf390977e7f50';

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

abstract class _$AsyncWeather
    extends BuildlessAutoDisposeAsyncNotifier<Weather?> {
  late final double latitude;
  late final double longitude;

  FutureOr<Weather?> build(
    double latitude,
    double longitude,
  );
}

/// See also [AsyncWeather].
@ProviderFor(AsyncWeather)
const asyncWeatherProvider = AsyncWeatherFamily();

/// See also [AsyncWeather].
class AsyncWeatherFamily extends Family<AsyncValue<Weather?>> {
  /// See also [AsyncWeather].
  const AsyncWeatherFamily();

  /// See also [AsyncWeather].
  AsyncWeatherProvider call(
    double latitude,
    double longitude,
  ) {
    return AsyncWeatherProvider(
      latitude,
      longitude,
    );
  }

  @override
  AsyncWeatherProvider getProviderOverride(
    covariant AsyncWeatherProvider provider,
  ) {
    return call(
      provider.latitude,
      provider.longitude,
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
  String? get name => r'asyncWeatherProvider';
}

/// See also [AsyncWeather].
class AsyncWeatherProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AsyncWeather, Weather?> {
  /// See also [AsyncWeather].
  AsyncWeatherProvider(
    double latitude,
    double longitude,
  ) : this._internal(
          () => AsyncWeather()
            ..latitude = latitude
            ..longitude = longitude,
          from: asyncWeatherProvider,
          name: r'asyncWeatherProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$asyncWeatherHash,
          dependencies: AsyncWeatherFamily._dependencies,
          allTransitiveDependencies:
              AsyncWeatherFamily._allTransitiveDependencies,
          latitude: latitude,
          longitude: longitude,
        );

  AsyncWeatherProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.latitude,
    required this.longitude,
  }) : super.internal();

  final double latitude;
  final double longitude;

  @override
  FutureOr<Weather?> runNotifierBuild(
    covariant AsyncWeather notifier,
  ) {
    return notifier.build(
      latitude,
      longitude,
    );
  }

  @override
  Override overrideWith(AsyncWeather Function() create) {
    return ProviderOverride(
      origin: this,
      override: AsyncWeatherProvider._internal(
        () => create()
          ..latitude = latitude
          ..longitude = longitude,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        latitude: latitude,
        longitude: longitude,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<AsyncWeather, Weather?>
      createElement() {
    return _AsyncWeatherProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AsyncWeatherProvider &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, latitude.hashCode);
    hash = _SystemHash.combine(hash, longitude.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AsyncWeatherRef on AutoDisposeAsyncNotifierProviderRef<Weather?> {
  /// The parameter `latitude` of this provider.
  double get latitude;

  /// The parameter `longitude` of this provider.
  double get longitude;
}

class _AsyncWeatherProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<AsyncWeather, Weather?>
    with AsyncWeatherRef {
  _AsyncWeatherProviderElement(super.provider);

  @override
  double get latitude => (origin as AsyncWeatherProvider).latitude;
  @override
  double get longitude => (origin as AsyncWeatherProvider).longitude;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
