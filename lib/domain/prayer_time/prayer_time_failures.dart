import 'package:freezed_annotation/freezed_annotation.dart';

part 'prayer_time_failures.freezed.dart';

@freezed
class PrayerTimeFailures with _$PrayerTimeFailures {
  const factory PrayerTimeFailures.invalidCoordinates() = _PrayerTimeFailures;
  const factory PrayerTimeFailures.emptyCache() = _EmptyCache;
}
