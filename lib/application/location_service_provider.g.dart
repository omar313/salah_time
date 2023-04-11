// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_service_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$locationServiceHash() => r'533e3e3c46e2028d38cef22a3cdbdf4778bf5303';

/// See also [locationService].
@ProviderFor(locationService)
final locationServiceProvider = AutoDisposeProvider<LocationService>.internal(
  locationService,
  name: r'locationServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$locationServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocationServiceRef = AutoDisposeProviderRef<LocationService>;
String _$locationHash() => r'c04b2f3bdc5df134dc6ec316f18263570af0bd00';

/// See also [Location].
@ProviderFor(Location)
final locationProvider =
    AutoDisposeFutureProvider<Either<LocationFailures, AppLocation>>.internal(
  Location,
  name: r'locationProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$locationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LocationRef
    = AutoDisposeFutureProviderRef<Either<LocationFailures, AppLocation>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
