import 'package:dartz/dartz.dart';
import 'package:salah_time/domain/location/location_failures.dart';
import 'package:salah_time/domain/location/location_model.dart';
abstract class LocationService{
  Future<Either<LocationFailures, AppLocation>> getLocation();
}