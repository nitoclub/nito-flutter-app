import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'feature_admin_top_platform_interface.dart';

/// An implementation of [FeatureAdminTopPlatform] that uses method channels.
class MethodChannelFeatureAdminTop extends FeatureAdminTopPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('feature_admin_top');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
