import 'package:flutter/material.dart';
import 'package:salah_time/presentation/location/location_widget.dart';

class SalahTimePage extends StatelessWidget {
  const SalahTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Salah Time'),),
      body: Column(
        children: const [
          LocationWidget()
        ],
      ),
    );
  }
}
