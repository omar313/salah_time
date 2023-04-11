import 'package:freezed_annotation/freezed_annotation.dart';

part 'prayer_time_model.freezed.dart';

@freezed
class AppPrayerTime with _$AppPrayerTime {
  const factory AppPrayerTime({
    required String prayerName,
    required String startTime,
    required String endTime
}) = _AppPrayerTime;

}