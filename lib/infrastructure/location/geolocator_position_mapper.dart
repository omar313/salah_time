import 'package:geolocator/geolocator.dart';
import 'package:salah_time/domain/location/location_model.dart';
extension GeoLocatorPositionMapper on Position{
  AppLocation toDomain(){
    return AppLocation(lat: latitude, long: longitude);
  }
}