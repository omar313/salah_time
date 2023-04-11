import 'package:dartz/dartz.dart';
import 'package:salah_time/domain/location/location_model.dart';
import 'package:salah_time/domain/prayer_time/prayer_time_failures.dart';
import 'package:salah_time/domain/prayer_time/prayer_time_model.dart';

abstract class PrayerTimeService{
  Either <PrayerTimeFailures, List<AppPrayerTime>> getPrayerTimes(AppLocation location);
}