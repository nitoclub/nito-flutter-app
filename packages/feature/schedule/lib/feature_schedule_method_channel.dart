import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'feature_schedule_platform_interface.dart';

/// An implementation of [FeatureSchedulePlatform] that uses method channels.
class MethodChannelFeatureSchedule
    extends FeatureSchedulePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('feature_frontend_schedule');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
