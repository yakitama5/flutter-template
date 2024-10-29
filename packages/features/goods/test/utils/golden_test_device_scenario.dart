import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';

import 'device.dart';

class GoldenTestDeviceScenario extends StatelessWidget {
  const GoldenTestDeviceScenario({
    required this.name,
    required this.builder,
    this.device = Device.iphone11,
    super.key,
  });
  final String name;
  final Device device;
  final ValueGetter<Widget> builder;

  @override
  Widget build(BuildContext context) {
    return GoldenTestScenario(
      name: '$name (device: ${device.name})',
      child: ClipRect(
        child: MediaQuery(
          // ignore: unnecessary_rebuilds_from_media_query
          data: MediaQuery.of(context).copyWith(
            size: device.size,
            padding: device.safeArea,
            platformBrightness: device.brightness,
            textScaler: TextScaler.linear(device.textScaleFactor),
            devicePixelRatio: device.devicePixelRatio,
          ),
          child: SizedBox(
            height: device.size.height,
            width: device.size.width,
            child: builder(),
          ),
        ),
      ),
    );
  }
}
