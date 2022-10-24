import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'nito_styleguide_platform_interface.dart';

/// An implementation of [NitoStyleguidePlatform] that uses method channels.
class MethodChannelNitoStyleguide extends NitoStyleguidePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('nito_styleguide');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
