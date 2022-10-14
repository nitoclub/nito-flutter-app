import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'top_platform_interface.dart';

/// An implementation of [TopPlatform] that uses method channels.
class MethodChannelTop extends TopPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('top');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
