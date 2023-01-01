import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'feature_frontend_setting_platform_interface.dart';

/// An implementation of [FeatureFrontendSettingPlatform] that uses method channels.
class MethodChannelFeatureFrontendSetting extends FeatureFrontendSettingPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('feature_frontend_setting');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
