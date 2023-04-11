import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

@freezed
class AppLocation with _$AppLocation {
  const factory AppLocation({required double lat, required double long}) =
      _AppLocation;
}
