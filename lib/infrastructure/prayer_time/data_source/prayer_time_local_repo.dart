import 'package:dartz/dartz.dart';

import 'package:salah_time/domain/prayer_time/prayer_time_failures.dart';

import 'package:salah_time/domain/prayer_time/prayer_time_model.dart';
import 'package:salah_time/infrastructure/prayer_time/data_source/prayer_time_hive_repo.dart';

import 'i_prayer_time_repo.dart';

class PrayerTimeLocalRepository extends PrayerTimeCacheDataSource {
  final PrayerTimeHiveRepository hiveRepository;

  PrayerTimeLocalRepository({required this.hiveRepository});



  Future init() async {
   await hiveRepository.init();
  }


  @override
  void cachePrayerTimes(List<AppPrayerTime> times) {
    for (var element in times) {
      hiveRepository.add(element);
    }
  }

  @override
  Future<Either<PrayerTimeFailures, List<AppPrayerTime>>>
      getPrayerTimes() async {


    final list = hiveRepository.getAllData();
    if (list.isEmpty) {
      return left(const PrayerTimeFailures.emptyCache());
    }
    return right(list);
  }
}
