import 'package:dartz/dartz.dart';
import 'package:salah_time/domain/location/location_model.dart';
import 'package:salah_time/domain/prayer_time/i_prayer_time_service.dart';
import 'package:salah_time/domain/prayer_time/prayer_time_failures.dart';
import 'package:salah_time/domain/prayer_time/prayer_time_model.dart';
import 'package:salah_time/infrastructure/prayer_time/data_source/i_prayer_time_repo.dart';

class PrayerTimeServiceImpl implements PrayerTimeService {
  final PrayerTimeLiveDataSource liveDataSource;
  final PrayerTimeCacheDataSource cacheDataSource;

  PrayerTimeServiceImpl(
      {required this.liveDataSource, required this.cacheDataSource});

  @override
  Future<Either<PrayerTimeFailures, List<AppPrayerTime>>> getPrayerTimes(
      AppLocation? location) async {
    final localData = await cacheDataSource.getPrayerTimes();
    return localData.fold((l) {
      if(location == null) {
        return left(const PrayerTimeFailures.invalidCoordinates());
      }
      final liveData = liveDataSource.getPrayerTimes(location);
    return  liveData.fold((l) => left(l), (r) {
        cacheDataSource.cachePrayerTimes(r);
        return right(r);
      });
    }, (r) => right(r));
  }

}