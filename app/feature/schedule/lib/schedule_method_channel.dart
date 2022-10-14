import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'schedule_platform_interface.dart';

/// An implementation of [SchedulePlatform] that uses method channels.
class MethodChannelSchedule extends SchedulePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('schedule');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
