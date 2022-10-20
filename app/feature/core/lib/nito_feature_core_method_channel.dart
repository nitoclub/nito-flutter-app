import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'nito_feature_core_platform_interface.dart';

/// An implementation of [NitoFeatureCorePlatform] that uses method channels.
class MethodChannelNitoFeatureCore extends NitoFeatureCorePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('nito_feature_core');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
