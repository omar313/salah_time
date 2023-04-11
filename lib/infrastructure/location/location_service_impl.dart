import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:salah_time/domain/location/i_location_service.dart';
import 'package:salah_time/domain/location/location_failures.dart';
import 'package:salah_time/domain/location/location_model.dart';
import 'geolocator_position_mapper.dart';

class LocationServiceImpl implements LocationService{
  @override
  Future<Either<LocationFailures, AppLocation>> getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if(!serviceEnabled){
      return left(const LocationFailures.disabled());
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left(const LocationFailures.permissionDenied());
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return left(const LocationFailures.permissionDeniedForever());
    }
    final position = await Geolocator.getCurrentPosition();

    return right(position.toDomain());

  }
}