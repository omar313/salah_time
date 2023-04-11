import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:salah_time/application/prayer_time/prayer_time.dart';

class PrayerTimeWidget extends ConsumerWidget {

  const PrayerTimeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final times = ref.watch(prayerTimeProvider);
    return times.when(data: (data) => data.fold(
            (l) => Container(),
            (r) => ListView.builder(
          itemCount: r.length,
          itemBuilder: (context, index) {
            final model = r[index];
            return ListTile(
              title: Text(model.prayerName),
              trailing: Text('${model.startTime} - ${model.endTime}'),
            );
          },
        )), error: (_,__) => Container(), loading: ()=> Container());
  }
}
