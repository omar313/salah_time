import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'prayer_time_model.freezed.dart';
part 'prayer_time_model.g.dart';


@freezed
class AppPrayerTime with _$AppPrayerTime {
  @HiveType(typeId: 1)
  const factory AppPrayerTime({
    @HiveField(0) required String prayerName,
    @HiveField(1) required String startTime,
    @HiveField(2) required String endTime
}) = _AppPrayerTime;

}