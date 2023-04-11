import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:salah_time/infrastructure/location/location_service_impl.dart';

import '../domain/location/i_location_service.dart';
import '../domain/location/location_failures.dart';
import '../domain/location/location_model.dart';

part 'location_service_provider.g.dart';

@riverpod
LocationService locationService(LocationServiceRef ref) => LocationServiceImpl();



@riverpod
Future<Either<LocationFailures, AppLocation>> Location(LocationRef ref) async{
  return ref.watch(locationServiceProvider).getLocation();
}