import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:salah_time/infrastructure/location/location_service_impl.dart';
import 'package:salah_time/infrastructure/prayer_time/data_source/i_prayer_time_repo.dart';
import 'package:salah_time/infrastructure/prayer_time/data_source/prayer_time_hive_repo.dart';
import 'package:salah_time/infrastructure/prayer_time/data_source/prayer_time_live_impl.dart';
import 'package:salah_time/infrastructure/prayer_time/prayer_time_service_impl.dart';

import '../domain/location/i_location_service.dart';
import 'domain/prayer_time/i_prayer_time_service.dart';
import 'infrastructure/prayer_time/data_source/prayer_time_local_repo.dart';

part 'injection.g.dart';

///location

@riverpod
LocationService locationService(LocationServiceRef ref) =>
    LocationServiceImpl();

/// prayers

@riverpod
PrayerTimeLiveDataSource prayerTimeLiveDataSource(
        PrayerTimeLiveDataSourceRef ref) =>
    PrayerTimeLiveImpl();

@Riverpod(keepAlive:true)
PrayerTimeHiveRepository prayerTimeHiveRepository(
    PrayerTimeHiveRepositoryRef ref) {
  final repository = PrayerTimeHiveRepository();

  return repository;
}

@Riverpod(keepAlive:true)
PrayerTimeCacheDataSource prayerTimeCacheDataSource(
        PrayerTimeCacheDataSourceRef ref) =>
    PrayerTimeLocalRepository(
        hiveRepository: ref.watch(prayerTimeHiveRepositoryProvider))..init();

@riverpod
PrayerTimeService prayerTimeService(PrayerTimeServiceRef ref) =>
    PrayerTimeServiceImpl(
        liveDataSource: ref.watch(prayerTimeLiveDataSourceProvider),
        cacheDataSource: ref.watch(prayerTimeCacheDataSourceProvider));
