import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_failures.freezed.dart';

@freezed
class LocationFailures with _$LocationFailures {
  const factory LocationFailures.disabled() = _Disabled;
  const factory LocationFailures.permissionDenied() = _PermissionDenied;
  const factory LocationFailures.permissionDeniedForever() = _PermissionDeniedForever;
}