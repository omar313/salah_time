import 'package:dartz/dartz.dart';
import 'package:salah_time/domain/location/location_model.dart';
import 'package:salah_time/domain/prayer_time/prayer_time_failures.dart';
import 'package:salah_time/domain/prayer_time/prayer_time_model.dart';
import 'package:salah_time/infrastructure/prayer_time/data_source/i_prayer_time_repo.dart';
import 'package:adhan/adhan.dart';
import 'package:intl/intl.dart';

class PrayerTimeLiveImpl implements PrayerTimeLiveDataSource {
  @override
  Either<PrayerTimeFailures, List<AppPrayerTime>> getPrayerTimes(
      AppLocation location) {
    try {
      final myCoordinates = Coordinates(location.lat, location.long);
      final params = CalculationMethod.muslim_world_league.getParameters();
      params.madhab = Madhab.hanafi;
      final prayerTimes = PrayerTimes.today(myCoordinates, params);

      List<AppPrayerTime> prayers = [];
      final format = DateFormat("HH:mm");

      /// Fajr
      var startTime = format.format(prayerTimes.fajr);
      var endTime = format
          .format(prayerTimes.sunrise.subtract(const Duration(minutes: 1)));
      prayers.add(AppPrayerTime(
          prayerName: 'Fajr', startTime: startTime, endTime: endTime));

      /// dhuhr
       startTime = format.format(prayerTimes.dhuhr);
       endTime = format
          .format(prayerTimes.asr.subtract(const Duration(minutes: 1)));
      prayers.add(AppPrayerTime(
          prayerName: 'Dhuhr', startTime: startTime, endTime: endTime));

      /// asr
      startTime = format.format(prayerTimes.asr);
      endTime = format
          .format(prayerTimes.maghrib.subtract(const Duration(minutes: 4)));
      prayers.add(AppPrayerTime(
          prayerName: 'Asr', startTime: startTime, endTime: endTime));

      /// magrib
      startTime = format.format(prayerTimes.maghrib);
      endTime = format
          .format(prayerTimes.isha.subtract(const Duration(minutes: 1)));
      prayers.add(AppPrayerTime(
          prayerName: 'Maghrib', startTime: startTime, endTime: endTime));

      /// isha
      startTime = format.format(prayerTimes.isha);
      endTime = format
          .format(prayerTimes.fajr.subtract(const Duration(minutes: 12)));
      prayers.add(AppPrayerTime(
          prayerName: 'Isha', startTime: startTime, endTime: endTime));

      return right(prayers);

    } on ArgumentError catch (_) {
      return left(const PrayerTimeFailures.invalidCoordinates());
    }
  }
}
