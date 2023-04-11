import 'package:dartz/dartz.dart';
import 'package:salah_time/domain/location/location_model.dart';
import 'package:salah_time/domain/prayer_time/i_prayer_time_service.dart';
import 'package:salah_time/domain/prayer_time/prayer_time_failures.dart';
import 'package:salah_time/domain/prayer_time/prayer_time_model.dart';
import 'package:salah_time/infrastructure/prayer_time/data_source/i_prayer_time_repo.dart';

class PrayerTimeServiceImpl implements PrayerTimeService{
  final PrayerTimeLiveDataSource liveDataSource;

  PrayerTimeServiceImpl({required this.liveDataSource});
  @override
  Either<PrayerTimeFailures, List<AppPrayerTime>> getPrayerTimes(AppLocation location) {
    return liveDataSource.getPrayerTimes(location);
  }

}