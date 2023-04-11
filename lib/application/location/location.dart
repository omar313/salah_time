import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/location/location_failures.dart';
import '../../domain/location/location_model.dart';
import '../../injection.dart';
part 'location.g.dart';


@riverpod
Future<Either<LocationFailures, AppLocation>> Location(LocationRef ref) async {
  return ref.watch(locationServiceProvider).getLocation();
}