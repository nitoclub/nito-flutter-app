import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'feature_schedule_method_channel.dart';

abstract class FeatureSchedulePlatform extends PlatformInterface {
  /// Constructs a FeatureSchedulePlatform.
  FeatureSchedulePlatform() : super(token: _token);

  static final Object _token = Object();

  static FeatureSchedulePlatform _instance =
      MethodChannelFeatureSchedule();

  /// The default instance of [FeatureSchedulePlatform] to use.
  ///
  /// Defaults to [MethodChannelFeatureSchedule].
  static FeatureSchedulePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FeatureSchedulePlatform] when
  /// they register themselves.
  static set instance(FeatureSchedulePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
