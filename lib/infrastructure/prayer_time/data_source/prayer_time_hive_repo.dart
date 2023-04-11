import 'package:salah_time/domain/local_storage/hive_local_storage.dart';
import 'package:salah_time/domain/prayer_time/prayer_time_model.dart';
import 'package:hive/hive.dart';


class PrayerTimeHiveRepository extends HiveLocalStorage<AppPrayerTime>{
  @override
  Future init() async{
    Hive.registerAdapter(AppPrayerTimeAdapter());
    db = await Hive.openBox('appPrayerTime');
  }

}