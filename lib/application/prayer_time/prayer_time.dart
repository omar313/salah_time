import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:salah_time/application/location/location.dart';
import 'package:salah_time/injection.dart';

import '../../domain/prayer_time/prayer_time_failures.dart';
import '../../domain/prayer_time/prayer_time_model.dart';
import 'package:dartz/dartz.dart';

part 'prayer_time.g.dart';

@riverpod
Either<PrayerTimeFailures, List<AppPrayerTime>> prayerTime(PrayerTimeRef ref) {
  final location =
      ref.watch(locationProvider).value?.fold((l) => null, (r) => r);
  if (location == null) {
    return left(const PrayerTimeFailures.invalidCoordinates());
  }
  return ref.watch(prayerTimeServiceProvider).getPrayerTimes(location);
}
