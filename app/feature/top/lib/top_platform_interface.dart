import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'top_method_channel.dart';

abstract class TopPlatform extends PlatformInterface {
  /// Constructs a TopPlatform.
  TopPlatform() : super(token: _token);

  static final Object _token = Object();

  static TopPlatform _instance = MethodChannelTop();

  /// The default instance of [TopPlatform] to use.
  ///
  /// Defaults to [MethodChannelTop].
  static TopPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TopPlatform] when
  /// they register themselves.
  static set instance(TopPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
