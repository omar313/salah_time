import 'package:dartz/dartz.dart';

import '../../../domain/location/location_model.dart';
import '../../../domain/prayer_time/prayer_time_failures.dart';
import '../../../domain/prayer_time/prayer_time_model.dart';

abstract class PrayerTimeLiveDataSource {
  Either<PrayerTimeFailures, List<AppPrayerTime>> getPrayerTimes(
      AppLocation location);
}

abstract class PrayerTimeCacheDataSource {
  Either<PrayerTimeFailures, List<AppPrayerTime>> getPrayerTimes();

  void cachePrayerTimes(List<AppPrayerTime> times);
}
