import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/location/location.dart';
import '../../application/prayer_time/prayer_time.dart';

class LocationWidget extends ConsumerWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(locationProvider).when(
        data: (data) => data.fold(
            (l) => Text(
                  l.when(
                      disabled: () => 'Location services are disabled.',
                      permissionDenied: () => 'Location permissions are denied',
                      permissionDeniedForever: () =>
                          'Location permissions are permanently denied, we cannot request permissions.'),
                  style: const TextStyle(color: Colors.red),
                ),
            (r) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                    'latitude: ${r.lat} Longitude: ${r.long}',
                    style: const TextStyle(color: Colors.black),
                  ),
            )),
        error: (_, __) => Container(),
        loading: () => const CircularProgressIndicator());
  }
}
