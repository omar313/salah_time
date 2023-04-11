import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:salah_time/application/location/location.dart';
import 'package:salah_time/injection.dart';

import '../../domain/prayer_time/prayer_time_failures.dart';
import '../../domain/prayer_time/prayer_time_model.dart';
import 'package:dartz/dartz.dart';

part 'prayer_time.g.dart';

@riverpod
Future<Either<PrayerTimeFailures, List<AppPrayerTime>>> prayerTime(PrayerTimeRef ref) async {

  final location =
      ref.watch(locationProvider).value?.fold((l) => null, (r) => r);

  return await ref.watch(prayerTimeServiceProvider).getPrayerTimes(location);
}
